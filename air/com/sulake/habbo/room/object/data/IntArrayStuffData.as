//com.sulake.habbo.room.object.data.IntArrayStuffData

package com.sulake.habbo.room.object.data{
    import com.sulake.habbo.room.IStuffData;
    import com.sulake.core.communication.messages.IMessageDataWrapper;
    import com.sulake.room.object.IRoomObjectModel;
    import com.sulake.room.object.IRoomObjectModelController;

    public class IntArrayStuffData extends StuffDataBase implements IStuffData {

        public static const FORMAT_KEY:int;
        private static const STATE_DEFAULT_INDEX:int;

        private var _data:Array;

        public function IntArrayStuffData();

        override public function initializeFromIncomingMessage(k:IMessageDataWrapper):void;

        override public function initializeFromRoomObjectModel(k:IRoomObjectModel):void;

        override public function writeRoomObjectModel(k:IRoomObjectModelController):void;

        override public function getLegacyString():String;

        public function getValue(k:int):int;

        public function setArray(k:Array):void;

        override public function compare(k:IStuffData):Boolean;


    }
}//package com.sulake.habbo.room.object.data

