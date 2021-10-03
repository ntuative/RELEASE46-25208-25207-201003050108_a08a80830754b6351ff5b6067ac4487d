package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ItemPopupCtrl
   {
      
      private static const const_1062:int = 100;
      
      private static const const_1061:int = 200;
      
      private static const const_1064:int = 180;
      
      public static const const_897:int = 1;
      
      public static const const_370:int = 2;
      
      private static const const_1063:int = 250;
      
      private static const const_758:int = 5;
       
      
      private var var_564:BitmapData;
      
      private var var_296:Timer;
      
      private var var_6:IWindowContainer;
      
      private var var_666:BitmapData;
      
      private var var_297:Timer;
      
      private var var_72:IWindowContainer;
      
      private var var_1463:int = 2;
      
      private var _assets:IAssetLibrary;
      
      public function ItemPopupCtrl(param1:IWindowContainer, param2:IAssetLibrary)
      {
         var_297 = new Timer(const_1063,1);
         var_296 = new Timer(const_1062,1);
         super();
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         var_72 = param1;
         var_72.visible = false;
         _assets = param2;
         var_297.addEventListener(TimerEvent.TIMER,onDisplayTimer);
         var_296.addEventListener(TimerEvent.TIMER,onHideTimer);
         var _loc3_:BitmapDataAsset = _assets.getAssetByName("popup_arrow_right_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_666 = _loc3_.content as BitmapData;
         }
         _loc3_ = _assets.getAssetByName("popup_arrow_left_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_564 = _loc3_.content as BitmapData;
         }
      }
      
      public function hide() : void
      {
         var_72.visible = false;
         var_296.reset();
         var_297.reset();
         if(var_6 != null)
         {
            var_6.removeChild(var_72);
         }
      }
      
      public function hideDelayed() : void
      {
         var_296.reset();
         var_297.reset();
         var_296.start();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         hide();
      }
      
      public function dispose() : void
      {
         if(var_297 != null)
         {
            var_297.removeEventListener(TimerEvent.TIMER,onDisplayTimer);
            var_297.stop();
            var_297 = null;
         }
         if(var_296 != null)
         {
            var_296.removeEventListener(TimerEvent.TIMER,onHideTimer);
            var_296.stop();
            var_296 = null;
         }
         _assets = null;
         var_72 = null;
         var_6 = null;
         var_564 = null;
         var_666 = null;
      }
      
      public function showDelayed() : void
      {
         var_296.reset();
         var_297.reset();
         var_297.start();
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         show();
      }
      
      public function updateContent(param1:IWindowContainer, param2:String, param3:BitmapData, param4:int = 2) : void
      {
         var _loc7_:* = null;
         if(var_72 == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new BitmapData(1,1,true,16777215);
         }
         if(var_6 != null)
         {
            var_6.removeChild(var_72);
         }
         var_6 = param1;
         var_1463 = param4;
         var _loc5_:ITextWindow = ITextWindow(var_72.findChildByName("item_name_text"));
         if(_loc5_)
         {
            _loc5_.text = param2;
         }
         var _loc6_:IBitmapWrapperWindow = var_72.findChildByName("item_image") as IBitmapWrapperWindow;
         if(_loc6_)
         {
            _loc7_ = new BitmapData(Math.min(const_1064,param3.width),Math.min(const_1061,param3.height),true,16777215);
            _loc7_.copyPixels(param3,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),null,null,true);
            _loc6_.bitmap = _loc7_;
            _loc6_.width = _loc6_.bitmap.width;
            _loc6_.height = _loc6_.bitmap.height;
            _loc6_.x = (0 - _loc6_.width) / 2;
            var_72.height = _loc6_.rectangle.bottom + 10;
         }
      }
      
      private function refreshArrow(param1:int = 2) : void
      {
         if(var_72 == null || false)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(var_72.findChildByName("arrow_pointer"));
         if(!_loc2_)
         {
            return;
         }
         switch(param1)
         {
            case const_897:
               _loc2_.bitmap = var_666.clone();
               _loc2_.width = var_666.width;
               _loc2_.height = var_666.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = -1;
               break;
            case const_370:
               _loc2_.bitmap = var_564.clone();
               _loc2_.width = var_564.width;
               _loc2_.height = var_564.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = 1;
         }
         _loc2_.invalidate();
      }
      
      public function show() : void
      {
         var_296.reset();
         var_297.reset();
         if(var_6 == null)
         {
            return;
         }
         var_72.visible = true;
         var_6.addChild(var_72);
         refreshArrow(var_1463);
         switch(var_1463)
         {
            case const_897:
               var_72.x = 0 - const_758;
               break;
            case const_370:
               var_72.x = var_6.width + const_758;
         }
         var_72.y = (0 - 0) / 2;
      }
   }
}
