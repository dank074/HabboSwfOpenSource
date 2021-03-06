﻿package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
    import com.sulake.core.communication.messages.IMessageComposer;

    public class SpinWheelOfFortuneMessageComposer implements IMessageComposer
    {
        private var _objectId:int;

        public function SpinWheelOfFortuneMessageComposer(k:int)
        {
            this._objectId = k;
        }

        public function dispose():void
        {
        }

        public function getMessageArray():Array
        {
            return [this._objectId];
        }
    }
}
