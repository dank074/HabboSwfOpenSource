﻿package com.sulake.habbo.communication.messages.incoming.moderation
{
    import com.sulake.core.runtime.IDisposable;
    import com.sulake.core.communication.messages.IMessageDataWrapper;

    public class _Str_5709 implements IDisposable 
    {
        private var _flatId:int;
        private var _userCount:int;
        private var _Str_21059:Boolean;
        private var _ownerId:int;
        private var _ownerName:String;
        private var _room:RoomData;
        private var _disposed:Boolean;

        public function _Str_5709(k:IMessageDataWrapper)
        {
            this._flatId = k.readInteger();
            this._userCount = k.readInteger();
            this._Str_21059 = k.readBoolean();
            this._ownerId = k.readInteger();
            this._ownerName = k.readString();
            this._room = new RoomData(k);
        }

        public function get disposed():Boolean
        {
            return this._disposed;
        }

        public function dispose():void
        {
            if (this._disposed)
            {
                return;
            }
            this._disposed = true;
            if (this._room != null)
            {
                this._room.dispose();
                this._room = null;
            }
        }

        public function get flatId():int
        {
            return this._flatId;
        }

        public function get userCount():int
        {
            return this._userCount;
        }

        public function get _Str_24479():Boolean
        {
            return this._Str_21059;
        }

        public function get ownerId():int
        {
            return this._ownerId;
        }

        public function get ownerName():String
        {
            return this._ownerName;
        }

        public function get room():RoomData
        {
            return this._room;
        }
    }
}
