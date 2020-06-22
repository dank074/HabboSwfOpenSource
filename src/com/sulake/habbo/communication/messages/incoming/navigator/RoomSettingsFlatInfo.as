﻿package com.sulake.habbo.communication.messages.incoming.navigator
{
    public class RoomSettingsFlatInfo
    {
        public static const DOORMODE_OPEN:int = 0;
        public static const DOORMODE_CLOSED:int = 1;
        public static const DOORMODE_PASSWORD:int = 2;
        public static const DOORMODE_INVISIBLE:int = 3;
        public static const DOORMODE_NOOBS_ONLY:int = 4;

        private var _allowFurniMoving:Boolean;
        private var _doorMode:int;
        private var _id:int;
        private var _ownerName:String;
        private var _type:String;
        private var _name:String;
        private var _description:String;
        private var _showOwnerName:Boolean;
        private var _allowTrading:Boolean;
        private var _Str_20586:Boolean;
        private var _password:String;


        public function get _Str_24220():Boolean
        {
            return this._allowFurniMoving;
        }

        public function get doorMode():int
        {
            return this._doorMode;
        }

        public function get id():int
        {
            return this._id;
        }

        public function get ownerName():String
        {
            return this._ownerName;
        }

        public function get type():String
        {
            return this._type;
        }

        public function get name():String
        {
            return this._name;
        }

        public function get description():String
        {
            return this._description;
        }

        public function get _Str_23228():Boolean
        {
            return this._showOwnerName;
        }

        public function get _Str_24512():Boolean
        {
            return this._allowTrading;
        }

        public function get _Str_23565():Boolean
        {
            return this._Str_20586;
        }

        public function get password():String
        {
            return this._password;
        }

        public function set _Str_24220(k:Boolean):void
        {
            this._allowFurniMoving = k;
        }

        public function set doorMode(k:int):void
        {
            this._doorMode = k;
        }

        public function set id(k:int):void
        {
            this._id = k;
        }

        public function set ownerName(k:String):void
        {
            this._ownerName = k;
        }

        public function set type(k:String):void
        {
            this._type = k;
        }

        public function set name(k:String):void
        {
            this._name = k;
        }

        public function set description(k:String):void
        {
            this._description = k;
        }

        public function set _Str_23228(k:Boolean):void
        {
            this._showOwnerName = k;
        }

        public function set _Str_24512(k:Boolean):void
        {
            this._allowTrading = k;
        }

        public function set _Str_23565(k:Boolean):void
        {
            this._Str_20586 = k;
        }

        public function set password(k:String):void
        {
            this._password = k;
        }
    }
}