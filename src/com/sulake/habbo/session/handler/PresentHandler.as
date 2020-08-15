﻿package com.sulake.habbo.session.handler
{
    import com.sulake.habbo.communication.messages.incoming.room.furniture.PresentOpenedMessageEvent;
    import com.sulake.core.communication.connection.IConnection;
    import com.sulake.habbo.session.IRoomHandlerListener;
    import com.sulake.habbo.communication.messages.parser.room.furniture.PresentOpenedMessageParser;
    import com.sulake.habbo.session.IRoomSession;
    import com.sulake.habbo.session.events.RoomSessionPresentEvent;
    import com.sulake.core.communication.messages.IMessageEvent;

    public class PresentHandler extends BaseHandler 
    {
        public function PresentHandler(k:IConnection, _arg_2:IRoomHandlerListener)
        {
            super(k, _arg_2);
            if (k == null)
            {
                return;
            }
            k.addMessageEvent(new PresentOpenedMessageEvent(this.onPresentOpened));
        }

        private function onPresentOpened(k:IMessageEvent):void
        {
            var _local_2:PresentOpenedMessageParser = (k as PresentOpenedMessageEvent).getParser();
            if (_local_2 == null)
            {
                return;
            }
            var _local_3:IRoomSession = listener.getSession(_xxxRoomId);
            if (_local_3 == null)
            {
                return;
            }
            if (((listener) && (listener.events)))
            {
                listener.events.dispatchEvent(new RoomSessionPresentEvent(RoomSessionPresentEvent.RSPE_PRESENT_OPENED, _local_3, _local_2.classId, _local_2.itemType, _local_2.productCode, _local_2.placedItemId, _local_2.placedItemType, _local_2._Str_4057, _local_2.petFigureString));
            }
        }
    }
}
