﻿package com.sulake.habbo.communication.messages.outgoing.nux
{
    public class NewUserExperienceGetGiftsSelection
    {
        private var _dayIndex:int;
        private var _stepIndex:int;
        private var _Str_20483:int;

        public function NewUserExperienceGetGiftsSelection(k:int, _arg_2:int, _arg_3:int)
        {
            this._dayIndex = k;
            this._stepIndex = _arg_2;
            this._Str_20483 = _arg_3;
        }

        public function get dayIndex():int
        {
            return this._dayIndex;
        }

        public function get stepIndex():int
        {
            return this._stepIndex;
        }

        public function get _Str_22800():int
        {
            return this._Str_20483;
        }
    }
}
