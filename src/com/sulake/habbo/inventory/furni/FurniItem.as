package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1736:int;
      
      private var var_1737:Boolean;
      
      private var var_1735:int;
      
      private var var_1375:String;
      
      private var var_1733:Boolean = false;
      
      private var var_1732:int;
      
      private var var_436:int;
      
      private var var_984:String;
      
      private var var_1738:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1340:int;
      
      private var var_1734:Boolean;
      
      private var var_1739:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1736 = param1;
         var_984 = param2;
         _objId = param3;
         var_1340 = param4;
         var_1375 = param5;
         var_1737 = param6;
         var_1734 = param7;
         var_1732 = param8;
         var_1738 = param9;
         var_1735 = param10;
         var_436 = -1;
      }
      
      public function get songId() : int
      {
         return var_1735;
      }
      
      public function get iconCallbackId() : int
      {
         return var_436;
      }
      
      public function get expiryTime() : int
      {
         return var_1732;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_1739 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_1733 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_436 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1734;
      }
      
      public function get slotId() : String
      {
         return var_1738;
      }
      
      public function get classId() : int
      {
         return var_1340;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1737;
      }
      
      public function get stuffData() : String
      {
         return var_1375;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1736;
      }
      
      public function get isLocked() : Boolean
      {
         return var_1733;
      }
      
      public function get prevCallbackId() : int
      {
         return var_1739;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_984;
      }
   }
}
