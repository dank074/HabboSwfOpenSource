package com.sulake.habbo.ui.widget.infobuspolls 
{
	import com.sulake.habbo.ui.widget.events.RoomWidgetVoteUpdateEvent;
	import com.sulake.habbo.ui.widget.enums.RoomWidgetEnum;
	import com.sulake.habbo.ui.IRoomWidgetHandler;
	import com.sulake.habbo.ui.IRoomWidgetHandlerContainer;
	import com.sulake.habbo.session.events.RoomSessionVoteEvent;
    import com.sulake.habbo.ui.widget.messages.RoomWidgetMessage;
    import com.sulake.habbo.ui.widget.events.RoomWidgetUpdateEvent;
	import flash.events.Event;
	/**
	 * ...
	 * @author 
	 */
	public class VotePollWidgetHandler implements IRoomWidgetHandler
	{
		private var _disposed:Boolean = false;
		private var _container:IRoomWidgetHandlerContainer = null;

        public function get disposed():Boolean
        {
            return this._disposed;
        }

        public function get type():String
        {
            return RoomWidgetEnum.ROOM_VOTE;
        }

        public function set container(_arg_1:IRoomWidgetHandlerContainer):void
        {
            this._container = _arg_1;
        }

        public function dispose():void
        {
            this._disposed = true;
            this._container = null;
        }

        public function getWidgetMessages():Array
        {
            return [RoomWidgetVoteMessage.VOTE_MESSAGE];
        }

        public function processWidgetMessage(_arg_1:RoomWidgetMessage):RoomWidgetUpdateEvent
        {
            var _local_2:RoomWidgetVoteMessage;
            switch (_arg_1.type)
            {
                case RoomWidgetVoteMessage.VOTE_MESSAGE:
                    _local_2 = (_arg_1 as RoomWidgetVoteMessage);
                    if (_local_2 == null)
                    {
                        return null;
                    }
                    this._container.roomSession.votePoll(_local_2.index);
                    break;
            }
            return null;
        }

        public function getProcessedEvents():Array
        {
            var _local_1:Array = [];
            _local_1.push(RoomSessionVoteEvent.VOTE_QUESTION);
            _local_1.push(RoomSessionVoteEvent.VOTE_RESULT);
            return _local_1;
        }

        public function processEvent(_arg_1:Event):void
        {
            var _local_3:RoomWidgetVoteUpdateEvent;
            if (((this._container == null) || (this._container.events == null)))
            {
                return;
            }
            var _local_2:RoomSessionVoteEvent = (_arg_1 as RoomSessionVoteEvent);
            if (_local_2 == null)
            {
                return;
            }
            switch (_arg_1.type)
            {
                case RoomSessionVoteEvent.VOTE_QUESTION:
                    _local_3 = new RoomWidgetVoteUpdateEvent(RoomWidgetVoteUpdateEvent.VOTE_QUESTION, _local_2.question, _local_2.choices);
                    break;
                case RoomSessionVoteEvent.VOTE_RESULT:
                    _local_3 = new RoomWidgetVoteUpdateEvent(RoomWidgetVoteUpdateEvent.VOTE_RESULT, _local_2.question, _local_2.choices, _local_2._SafeStr_4173, _local_2._SafeStr_4174);
                    break;
            }
            if (_local_3 == null)
            {
                return;
            }
            this._container.events.dispatchEvent(_local_3);
        }

        public function update():void
        {
        }
	}

}
