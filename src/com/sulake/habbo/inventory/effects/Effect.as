package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import com.sulake.habbo.widget.memenu.IWidgetAvatarEffect;
   import flash.display.BitmapData;
   
   public class Effect implements IWidgetAvatarEffect, IThumbListDrawableItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_2107:Date;
      
      private var var_1304:Boolean = false;
      
      private var _type:int;
      
      private var var_363:BitmapData;
      
      private var var_250:Boolean = false;
      
      private var var_1308:int;
      
      private var var_592:int = 1;
      
      private var var_1051:int;
      
      public function Effect()
      {
         super();
      }
      
      public function get icon() : BitmapData
      {
         return var_363;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function setOneEffectExpired() : void
      {
         --var_592;
         if(var_592 < 0)
         {
            var_592 = 0;
         }
         var_1051 = var_1308;
         var_250 = false;
         var_1304 = false;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function set secondsLeft(param1:int) : void
      {
         var_1051 = param1;
      }
      
      public function get isActive() : Boolean
      {
         return var_250;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         var_363 = param1;
      }
      
      public function get duration() : int
      {
         return var_1308;
      }
      
      public function get isInUse() : Boolean
      {
         return var_1304;
      }
      
      public function get effectsInInventory() : int
      {
         return var_592;
      }
      
      public function get iconImage() : BitmapData
      {
         return var_363;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1 && !var_250)
         {
            var_2107 = new Date();
         }
         var_250 = param1;
      }
      
      public function set effectsInInventory(param1:int) : void
      {
         var_592 = param1;
      }
      
      public function get secondsLeft() : int
      {
         var _loc1_:int = 0;
         if(var_250)
         {
            _loc1_ = var_1051 - (new Date().valueOf() - var_2107.valueOf()) / 1000;
            _loc1_ = Math.floor(_loc1_);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return var_1051;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         var_1304 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1308 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
