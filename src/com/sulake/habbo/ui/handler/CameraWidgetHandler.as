﻿package com.sulake.habbo.ui.handler
{
    import com.sulake.habbo.ui.IRoomWidgetHandler;
    import com.sulake.core.runtime.IDisposable;
    import com.sulake.habbo.ui.IRoomWidgetHandlerContainer;
    import com.sulake.habbo.ui.widget.camera.CameraWidget;
    import com.sulake.habbo.communication.messages.incoming.camera.CameraStorageUrlMessageEvent;
    import com.sulake.habbo.communication.messages.incoming.camera.CameraPurchaseOKMessageEvent;
    import com.sulake.habbo.communication.messages.incoming.camera.CameraPublishStatusMessageEvent;
    import com.sulake.habbo.communication.messages.incoming.camera.CompetitionStatusMessageEvent;
    import com.sulake.habbo.communication.messages.incoming.camera.InitCameraMessageEvent;
    import com.sulake.habbo.ui.RoomDesktop;
    import com.sulake.habbo.ui.widget.enums.RoomWidgetEnum;
    import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
    import com.sulake.habbo.communication.enum.perk.PerkEnum;
    import com.sulake.habbo.communication.messages.outgoing.camera.RequestCameraConfigurationComposer;
    import com.sulake.habbo.ui.widget.messages.RoomWidgetMessage;
    import com.sulake.habbo.ui.widget.events.RoomWidgetUpdateEvent;
    import flash.events.Event;
    import com.sulake.habbo.communication.messages.outgoing.camera.PurchasePhotoMessageComposer;
    import com.sulake.habbo.communication.messages.outgoing.camera.PublishPhotoMessageComposer;
    import com.sulake.habbo.communication.messages.outgoing.camera.PhotoCompetitionMessageComposer;
    import com.sulake.habbo.communication.messages.outgoing.camera.RenderRoomMessageComposer;

    public class CameraWidgetHandler implements IRoomWidgetHandler, IDisposable 
    {
        private var _disposed:Boolean = false;
        private var _container:IRoomWidgetHandlerContainer = null;
        private var _widget:CameraWidget;
        private var _cameraStorageUrlMessageEvent:CameraStorageUrlMessageEvent;
        private var _cameraPurchaseOKMessageEvent:CameraPurchaseOKMessageEvent;
        private var _cameraPublishStatusMessageEvent:CameraPublishStatusMessageEvent;
        private var _competitionStatusMessageEvent:CompetitionStatusMessageEvent;
        private var _initCameraMessageEvent:InitCameraMessageEvent;
        private var _roomDesktop:RoomDesktop;
        private var _creditPrice:int = 999;
        private var _ducketPrice:int = 999;
        private var _publishDucketPrice:int = 999;

        public function CameraWidgetHandler(k:RoomDesktop)
        {
            this._roomDesktop = k;
        }

        public function get _Str_20642():int
        {
            return this._creditPrice;
        }

        public function get _Str_19681():int
        {
            return this._ducketPrice;
        }

        public function get _Str_22201():int
        {
            return this._publishDucketPrice;
        }

        public function get type():String
        {
            return RoomWidgetEnum.CAMERA;
        }

        public function get _Str_6647():RoomDesktop
        {
            return this._roomDesktop;
        }

        public function set container(k:IRoomWidgetHandlerContainer):void
        {
            if (((this._container) && (this._container.toolbar)))
            {
                this._container.toolbar.events.removeEventListener(HabboToolbarEvent.HTE_ICON_CAMERA, this._Str_21956);
            }
            this._container = k;
            if (((this._container) && (this._container.toolbar)))
            {
                this._container.toolbar.events.addEventListener(HabboToolbarEvent.HTE_ICON_CAMERA, this._Str_21956);
            }
            this._cameraStorageUrlMessageEvent = new CameraStorageUrlMessageEvent(this._Str_23768);
            this._cameraPurchaseOKMessageEvent = new CameraPurchaseOKMessageEvent(this.onPurchaseOK);
            this._cameraPublishStatusMessageEvent = new CameraPublishStatusMessageEvent(this._Str_22298);
            this._competitionStatusMessageEvent = new CompetitionStatusMessageEvent(this._Str_24681);
            this._initCameraMessageEvent = new InitCameraMessageEvent(this._Str_23954);
            this._container.connection.addMessageEvent(this._cameraStorageUrlMessageEvent);
            this._container.connection.addMessageEvent(this._cameraPurchaseOKMessageEvent);
            this._container.connection.addMessageEvent(this._cameraPublishStatusMessageEvent);
            this._container.connection.addMessageEvent(this._competitionStatusMessageEvent);
            this._container.connection.addMessageEvent(this._initCameraMessageEvent);
        }

        public function _Str_23224():void
        {
            if (this._container.sessionDataManager.isPerkAllowed(PerkEnum.CAMERA))
            {
                this._container.connection.send(new RequestCameraConfigurationComposer());
            }
        }

        private function _Str_23954(k:InitCameraMessageEvent):void
        {
            this._creditPrice = k.getParser().getCreditPrice();
            this._ducketPrice = k.getParser().getDucketPrice();
            this._publishDucketPrice = k.getParser().getPublishDucketPrice();
        }

        private function onPurchaseOK(k:CameraPurchaseOKMessageEvent):void
        {
            if (this._widget)
            {
                this._widget._Str_25644();
            }
        }

        private function _Str_22298(k:CameraPublishStatusMessageEvent):void
        {
            if (this._widget)
            {
                this._widget._Str_12205(k);
            }
        }

        private function _Str_24681(k:CompetitionStatusMessageEvent):void
        {
            if (this._widget)
            {
                this._widget._Str_10685(k);
            }
        }

        private function _Str_23768(k:CameraStorageUrlMessageEvent):void
        {
            if (!this._widget)
            {
                return;
            }
            var _local_2:String = k.getParser().url;
            this._widget._Str_16763(_local_2);
        }

        public function get container():IRoomWidgetHandlerContainer
        {
            return this._container;
        }

        public function getWidgetMessages():Array
        {
            return null;
        }

        public function processWidgetMessage(k:RoomWidgetMessage):RoomWidgetUpdateEvent
        {
            return null;
        }

        public function getProcessedEvents():Array
        {
            return [];
        }

        public function processEvent(k:Event):void
        {
        }

        public function update():void
        {
        }

        public function dispose():void
        {
            if (((this._container) && (this.container.connection)))
            {
                this._container.connection.removeMessageEvent(this._cameraStorageUrlMessageEvent);
                this._container.connection.removeMessageEvent(this._cameraPurchaseOKMessageEvent);
                this._container.connection.removeMessageEvent(this._cameraPublishStatusMessageEvent);
                this._container.connection.removeMessageEvent(this._competitionStatusMessageEvent);
                this._container.connection.removeMessageEvent(this._initCameraMessageEvent);
            }
            this._disposed = true;
            this._container = null;
            this._roomDesktop = null;
            this._widget = null;
        }

        public function get disposed():Boolean
        {
            return this._disposed;
        }

        public function set widget(k:CameraWidget):void
        {
            this._widget = k;
        }

        private function _Str_21956(k:HabboToolbarEvent):void
        {
            if (k.type == HabboToolbarEvent.HTE_ICON_CAMERA)
            {
                if (this._widget)
                {
                    this._widget.startTakingPhoto(k._Str_4856);
                }
            }
        }

        public function addListenerToStage(k:String, _arg_2:Function):void
        {
            this._roomDesktop.addListenerToStage(k, _arg_2);
        }

        public function removeListenerFromStage(k:String, _arg_2:Function):void
        {
            this._roomDesktop.removeListenerFromStage(k, _arg_2);
        }

        public function _Str_23090(PhotoId:String):void
        {
            this._container.connection.send(new PurchasePhotoMessageComposer(PhotoId));
        }

        public function _Str_23550():void
        {
            this._container.connection.send(new PublishPhotoMessageComposer());
        }

        public function _Str_24461():void
        {
            this._container.connection.send(new PhotoCompetitionMessageComposer());
        }

        public function _Str_18593():RenderRoomMessageComposer
        {
            return this._roomDesktop.roomEngine.getRenderRoomMessage(this._widget._Str_14786(), this._roomDesktop.roomBackgroundColor) as RenderRoomMessageComposer;
        }

        public function _Str_11986(k:RenderRoomMessageComposer):void
        {
            this._container.connection.send(k);
        }
    }
}
