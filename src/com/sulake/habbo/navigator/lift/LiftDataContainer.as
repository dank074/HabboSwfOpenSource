﻿package com.sulake.habbo.navigator.lift
{
    import com.sulake.habbo.navigator.HabboNewNavigator;
    import __AS3__.vec.Vector;
    import com.sulake.habbo.communication.messages.incoming.newnavigator.LiftedRoomData;
    import __AS3__.vec.*;

    public class LiftDataContainer 
    {
        private static const _Str_18604:String = "${image.library.url}officialrooms_hq/nav_teaser_wl.png";

        private var _navigator:HabboNewNavigator;
        private var _liftedRooms:Vector.<LiftedRoomData>;

        public function LiftDataContainer(k:HabboNewNavigator)
        {
            this._liftedRooms = new Vector.<LiftedRoomData>(0);
            super();
            this._navigator = k;
        }

        public function _Str_24253(k:Vector.<LiftedRoomData>):void
        {
            this._liftedRooms = k;
        }

        public function get _Str_6772():Vector.<LiftedRoomData>
        {
            return this._liftedRooms;
        }

        public function _Str_25136(k:int):String
        {
            if (((k < 0) || (k > (this._liftedRooms.length - 1))))
            {
                return "";
            }
            if (this._liftedRooms[k].image == "")
            {
                return _Str_18604;
            }
            return this._navigator._Str_25225 + this._liftedRooms[k].image;
        }
    }
}
