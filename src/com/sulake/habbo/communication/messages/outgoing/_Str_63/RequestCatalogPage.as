﻿package com.sulake.habbo.communication.messages.outgoing._Str_63
{
    import com.sulake.core.communication.messages.IMessageComposer;

    public class RequestCatalogPage implements IMessageComposer 
    {
        private var _array:Array;

        public function RequestCatalogPage(_pageId:int, _offerId:int, _catalogType:String)
        {
            this._array = [_pageId, _offerId, _catalogType];
        }

        public function dispose():void
        {
            this._array = null;
        }

        public function getMessageArray():Array
        {
            return this._array;
        }
    }
}
