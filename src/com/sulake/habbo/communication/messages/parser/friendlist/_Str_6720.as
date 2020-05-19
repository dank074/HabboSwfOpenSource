﻿package com.sulake.habbo.communication.messages.parser.friendlist
{
    import com.sulake.core.communication.messages.IMessageParser;
    import com.sulake.habbo.communication.messages.incoming.friendlist.FriendParser;
    import com.sulake.core.communication.messages.IMessageDataWrapper;

    public class _Str_6720 implements IMessageParser 
    {
        protected var _totalFragments:int;
        protected var _fragmentNo:int;
        private var _Str_14849:Array;


        public function get totalFragments():int
        {
            return this._totalFragments;
        }

        public function get fragmentNo():int
        {
            return this._fragmentNo;
        }

        public function get _Str_16756():Array
        {
            return this._Str_14849;
        }

        public function parse(k:IMessageDataWrapper):Boolean
        {
            this._totalFragments = k.readInteger();
            this._fragmentNo = k.readInteger();
            this._Str_14849 = new Array();
            var _local_2:int = k.readInteger();
            var _local_3:int;
            while (_local_3 < _local_2)
            {
                this._Str_14849.push(new FriendParser(k));
                _local_3++;
            }
            return true;
        }

        public function flush():Boolean
        {
            this._Str_14849 = new Array();
            return true;
        }
    }
}
