﻿package com.sulake.habbo.communication.messages.outgoing.gifts
{
    import com.sulake.core.communication.messages.IMessageComposer;
    import com.sulake.core.runtime.IDisposable;

    public class _Str_18298 implements IMessageComposer, IDisposable 
    {
        public static const NO_ISSUE_ID:int = -1;

        private var _array:Array;

        public function _Str_18298()
        {
            this._array = new Array();
            super();
        }

        public function getMessageArray():Array
        {
            return this._array;
        }

        public function dispose():void
        {
            this._array = null;
        }

        public function get disposed():Boolean
        {
            return false;
        }
    }
}
