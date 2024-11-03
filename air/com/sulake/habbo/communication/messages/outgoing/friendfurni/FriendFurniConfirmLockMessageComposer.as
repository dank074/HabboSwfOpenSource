//com.sulake.habbo.communication.messages.outgoing.friendfurni.FriendFurniConfirmLockMessageComposer

package com.sulake.habbo.communication.messages.outgoing.friendfurni{
    import com.sulake.core.communication.messages.IMessageComposer;
    import com.sulake.core.runtime.IDisposable;

    [SecureSWF(rename="true")]
    public class FriendFurniConfirmLockMessageComposer implements IMessageComposer, IDisposable {

        private var _array:Array;

        public function FriendFurniConfirmLockMessageComposer(k:int, _arg_2:Boolean);

        public function getMessageArray():Array;

        public function dispose():void;

        public function get disposed():Boolean;


    }
}//package com.sulake.habbo.communication.messages.outgoing.friendfurni

