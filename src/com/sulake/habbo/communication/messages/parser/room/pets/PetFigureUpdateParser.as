﻿package com.sulake.habbo.communication.messages.parser.room.pets
{
    import com.sulake.core.communication.messages.IMessageParser;
    import com.sulake.habbo.communication.messages.parser.inventory.pets.PetFigureData;
    import com.sulake.core.communication.messages.IMessageDataWrapper;

    public class PetFigureUpdateParser implements IMessageParser 
    {
        private var _roomIndex:int;
        private var _Str_2388:int;
        private var _figureData:PetFigureData;
        private var _hasSaddle:Boolean;
        private var _isRiding:Boolean;


        public function get roomIndex():int
        {
            return this._roomIndex;
        }

        public function get _Str_2508():int
        {
            return this._Str_2388;
        }

        public function get figureData():PetFigureData
        {
            return this._figureData;
        }

        public function get _Str_4799():Boolean
        {
            return this._hasSaddle;
        }

        public function get isRiding():Boolean
        {
            return this._isRiding;
        }

        public function flush():Boolean
        {
            return true;
        }

        public function parse(k:IMessageDataWrapper):Boolean
        {
            this._roomIndex = k.readInteger();
            this._Str_2388 = k.readInteger();
            this._figureData = new PetFigureData(k);
            this._hasSaddle = k.readBoolean();
            this._isRiding = k.readBoolean();
            return true;
        }
    }
}
