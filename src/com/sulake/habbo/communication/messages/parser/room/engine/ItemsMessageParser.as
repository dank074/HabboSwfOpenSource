﻿package com.sulake.habbo.communication.messages.parser.room.engine
{
    import com.sulake.core.communication.messages.IMessageParser;
    import com.sulake.habbo.communication.messages.incoming.room.engine.ItemMessageData;
    import com.sulake.core.utils.Map;
    import com.sulake.core.communication.messages.IMessageDataWrapper;

    public class ItemsMessageParser implements IMessageParser 
    {
        private var _items:Array;

        public function ItemsMessageParser()
        {
            this._items = [];
            super();
        }

        public function flush():Boolean
        {
            this._items = [];
            return true;
        }

        public function getItemCount():int
        {
            return this._items.length;
        }

        public function _Str_2990(k:int):ItemMessageData
        {
            if (((k < 0) || (k >= this.getItemCount())))
            {
                return null;
            }
            var _local_2:ItemMessageData = (this._items[k] as ItemMessageData);
            if (_local_2 != null)
            {
                _local_2.setReadOnly();
            }
            return _local_2;
        }

        public function parse(k:IMessageDataWrapper):Boolean
        {
            var iterator:int;
            var ownerId:int;
            var ownerName:String;
            var item:ItemMessageData;
            if (k == null)
            {
                return false;
            }
            this._items = [];
            var owners:Map = new Map();
            var _local_4:int = k.readInteger();
            iterator = 0;
            while (iterator < _local_4)
            {
                ownerId = k.readInteger();
                ownerName = k.readString();
                owners.add(ownerId, ownerName);
                iterator++;
            }
            var _local_5:int = k.readInteger();
            Logger.log((("We have: " + _local_5) + " items"));
            iterator = 0;
            while (iterator < _local_5)
            {
                item = ItemDataParser.parseItemData(k);
                item.ownerName = owners.getValue(item.ownerId);
                this._items.push(item);
                iterator++;
            }
            return true;
        }
    }
}
