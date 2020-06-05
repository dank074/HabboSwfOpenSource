﻿package com.sulake.core.window.components
{
    import com.sulake.core.window.WindowController;
    import com.sulake.core.window.enum.WindowState;
    import com.sulake.core.window.WindowContext;
    import flash.geom.Rectangle;
    import com.sulake.core.window.IWindow;
    import com.sulake.core.window.theme.PropertyKeys;
    import com.sulake.core.window.utils.PropertyStruct;
    import com.sulake.core.window.utils.IIterator;
    import com.sulake.core.window.events.WindowEvent;

    public class ScrollableItemGridWindow extends WindowController implements IScrollableGridWindow 
    {
        private var _Str_12329:IItemGridWindow;
        private var _Str_3397:IScrollbarWindow;
        private var _autoHideScrollBar:Boolean = true;

        public function ScrollableItemGridWindow(k:String, _arg_2:uint, _arg_3:uint, _arg_4:uint, _arg_5:WindowContext, _arg_6:Rectangle, _arg_7:IWindow, _arg_8:Function=null, _arg_9:Array=null, _arg_10:Array=null, _arg_11:uint=0)
        {
            super(k, _arg_2, _arg_3, _arg_4, _arg_5, _arg_6, _arg_7, _arg_8, _arg_9, _arg_10, _arg_11);
            this._Str_2734.scrollable = this._Str_2448;
            if (this._Str_2734.testStateFlag(WindowState.DISABLED))
            {
                this.hideScrollBar();
            }
        }

        override public function get properties():Array
        {
            var k:Array = super.properties;
            k.push(createProperty(PropertyKeys.SPACING, this.spacing));
            k.push(createProperty(PropertyKeys.AUTO_ARRANGE_ITEMS, this.autoArrangeItems));
            k.push(createProperty(PropertyKeys.SCALE_TO_FIT_ITEMS, this.scaleToFitItems));
            k.push(createProperty(PropertyKeys.RESIZE_ON_ITEM_UPDATE, this.resizeOnItemUpdate));
            return k;
        }

        override public function set properties(k:Array):void
        {
            var _local_2:PropertyStruct;
            for each (_local_2 in k)
            {
                switch (_local_2.key)
                {
                    case PropertyKeys.SPACING:
                        this.spacing = (_local_2.value as int);
                        break;
                    case PropertyKeys.SCALE_TO_FIT_ITEMS:
                        this.scaleToFitItems = (_local_2.value as Boolean);
                        break;
                    case PropertyKeys.RESIZE_ON_ITEM_UPDATE:
                        this.resizeOnItemUpdate = (_local_2.value as Boolean);
                        break;
                    case PropertyKeys.AUTO_ARRANGE_ITEMS:
                        this.autoArrangeItems = (_local_2.value as Boolean);
                        break;
                }
            }
            super.properties = k;
        }

        public function get autoHideScrollBar():Boolean
        {
            return this._autoHideScrollBar;
        }

        public function set autoHideScrollBar(k:Boolean):void
        {
            this._autoHideScrollBar = k;
            this._Str_17242();
        }

        public function get iterator():IIterator
        {
            return (this._Str_17415()) ? this._Str_2448.iterator : null;
        }

        public function get scrollH():Number
        {
            return this._Str_2448.scrollH;
        }

        public function set scrollH(k:Number):void
        {
            this._Str_2448.scrollH = k;
        }

        public function get scrollV():Number
        {
            return this._Str_2448.scrollV;
        }

        public function set scrollV(k:Number):void
        {
            this._Str_2448.scrollV = k;
        }

        public function get maxScrollH():int
        {
            return this._Str_2448.maxScrollH;
        }

        public function get maxScrollV():int
        {
            return this._Str_2448.maxScrollV;
        }

        public function get visibleRegion():Rectangle
        {
            return this._Str_2448.visibleRegion;
        }

        public function get scrollableRegion():Rectangle
        {
            return this._Str_2448.scrollableRegion;
        }

        public function get scrollStepH():Number
        {
            return this._Str_2448.scrollStepH;
        }

        public function set scrollStepH(k:Number):void
        {
            this._Str_2448.scrollStepH = k;
        }

        public function get scrollStepV():Number
        {
            return this._Str_2448.scrollStepV;
        }

        public function set scrollStepV(k:Number):void
        {
            this._Str_2448.scrollStepV = k;
        }

        public function get autoArrangeItems():Boolean
        {
            return this._Str_2448.autoArrangeItems;
        }

        public function set autoArrangeItems(k:Boolean):void
        {
            this._Str_2448.autoArrangeItems = k;
        }

        public function get numColumns():uint
        {
            return this._Str_2448.numColumns;
        }

        public function get numRows():uint
        {
            return this._Str_2448.numRows;
        }

        public function get numGridItems():uint
        {
            return this._Str_2448.numGridItems;
        }

        public function get shouldRebuildGridOnResize():Boolean
        {
            return this._Str_2448.shouldRebuildGridOnResize;
        }

        public function set shouldRebuildGridOnResize(k:Boolean):void
        {
            this._Str_2448.shouldRebuildGridOnResize = k;
        }

        public function get spacing():int
        {
            return this._Str_2448.spacing;
        }

        public function set spacing(k:int):void
        {
            this._Str_2448.spacing = k;
        }

        public function set verticalSpacing(k:int):void
        {
            this._Str_2448.verticalSpacing = k;
        }

        public function get scaleToFitItems():Boolean
        {
            return this._Str_2448.scaleToFitItems;
        }

        public function set scaleToFitItems(k:Boolean):void
        {
            this._Str_2448.scaleToFitItems = k;
        }

        public function get resizeOnItemUpdate():Boolean
        {
            return this._Str_2448.resizeOnItemUpdate;
        }

        public function set resizeOnItemUpdate(k:Boolean):void
        {
            this._Str_2448.resizeOnItemUpdate = k;
        }

        public function set containerResizeToColumns(k:Boolean):void
        {
        }

        public function get containerResizeToColumns():Boolean
        {
            return false;
        }

        protected function get _Str_2448():IItemGridWindow
        {
            if (!this._Str_12329)
            {
                this._Str_12329 = (findChildByTag("_ITEMGRID") as IItemGridWindow);
            }
            return this._Str_12329;
        }

        protected function get _Str_2734():IScrollbarWindow
        {
            if (!this._Str_3397)
            {
                this._Str_3397 = (findChildByTag("_SCROLLBAR") as IScrollbarWindow);
                if (this._Str_3397)
                {
                    this._Str_3397.addEventListener(WindowEvent.WINDOW_EVENT_ENABLED, this.scrollBarEventProc);
                    this._Str_3397.addEventListener(WindowEvent.WINDOW_EVENT_DISABLED, this.scrollBarEventProc);
                }
            }
            return this._Str_3397;
        }

        override public function dispose():void
        {
            if (this._Str_3397)
            {
                this._Str_3397.removeEventListener(WindowEvent.WINDOW_EVENT_ENABLED, this.scrollBarEventProc);
                this._Str_3397.removeEventListener(WindowEvent.WINDOW_EVENT_DISABLED, this.scrollBarEventProc);
                this._Str_3397 = null;
            }
            if (this._Str_12329)
            {
                this._Str_12329 = null;
            }
            super.dispose();
        }

        public function addGridItem(k:IWindow):IWindow
        {
            return this._Str_2448.addGridItem(k);
        }

        public function addGridItemAt(k:IWindow, _arg_2:uint):IWindow
        {
            return this._Str_2448.addGridItemAt(k, _arg_2);
        }

        public function getGridItemAt(k:uint):IWindow
        {
            return this._Str_2448.getGridItemAt(k);
        }

        public function getGridItemByID(k:uint):IWindow
        {
            return this._Str_2448.getGridItemByID(k);
        }

        public function getGridItemByName(k:String):IWindow
        {
            return this._Str_2448.getGridItemByName(k);
        }

        public function getGridItemByTag(k:String):IWindow
        {
            return this._Str_2448.getGridItemByTag(k);
        }

        public function getGridItemIndex(k:IWindow):int
        {
            return this._Str_2448.getGridItemIndex(k);
        }

        public function removeGridItem(k:IWindow):IWindow
        {
            return this._Str_2448.removeGridItem(k);
        }

        public function removeGridItemAt(k:int):IWindow
        {
            return this._Str_2448.removeGridItemAt(k);
        }

        public function setGridItemIndex(k:IWindow, _arg_2:int):void
        {
            this._Str_2448.setGridItemIndex(k, _arg_2);
        }

        public function swapGridItems(k:IWindow, _arg_2:IWindow):void
        {
            this._Str_2448.swapGridItems(k, _arg_2);
        }

        public function swapGridItemsAt(k:int, _arg_2:int):void
        {
            this._Str_2448.swapGridItemsAt(k, _arg_2);
        }

        public function removeGridItems():void
        {
            this._Str_2448.removeGridItems();
        }

        public function destroyGridItems():void
        {
            this._Str_2448.destroyGridItems();
        }

        public function rebuildGridStructure():void
        {
            this._Str_2448.rebuildGridStructure();
        }

        protected function _Str_17415():Boolean
        {
            return (this._Str_2448) && (this._Str_2734);
        }

        private function scrollBarEventProc(k:WindowEvent):void
        {
            if (k.type == WindowEvent.WINDOW_EVENT_ENABLED)
            {
                this._Str_11231();
            }
            else
            {
                if (k.type == WindowEvent.WINDOW_EVENT_DISABLED)
                {
                    this.hideScrollBar();
                }
            }
        }

        private function hideScrollBar():void
        {
            if (this._Str_2734.visible)
            {
                this._Str_2734.visible = false;
            }
        }

        private function _Str_11231():void
        {
            if (!this._Str_2734.visible)
            {
                this._Str_2734.visible = true;
            }
        }

        private function _Str_17242():void
        {
            if (this._autoHideScrollBar)
            {
                if (this._Str_2734.testStateFlag(WindowState.DISABLED))
                {
                    if (this._Str_2734.visible)
                    {
                        this.hideScrollBar();
                    }
                }
            }
            else
            {
                if (this._Str_2734.visible)
                {
                    this._Str_11231();
                }
            }
        }
    }
}
