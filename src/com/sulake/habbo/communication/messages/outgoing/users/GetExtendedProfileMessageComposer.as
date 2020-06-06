﻿package com.sulake.habbo.communication.messages.outgoing.users
{
    import com.sulake.core.communication.messages.IMessageComposer;

    public class GetExtendedProfileMessageComposer implements IMessageComposer
    {
        private var _array:Array;

        public function GetExtendedProfileMessageComposer(k:int, _arg_2:Boolean=true)
        {
            this._array = [];
            super();
            this._array.push(k);
            this._array.push(_arg_2);
        }

        public function getMessageArray():Array
        {
            return this._array;
        }

        public function dispose():void
        {
            this._array = null;
        }
    }
}