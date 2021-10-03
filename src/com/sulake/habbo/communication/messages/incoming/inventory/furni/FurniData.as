package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1375:String;
      
      private var var_984:String;
      
      private var var_2005:Boolean;
      
      private var var_1482:int;
      
      private var var_1736:int;
      
      private var var_2004:Boolean;
      
      private var var_1738:String = "";
      
      private var var_1737:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1340:int;
      
      private var var_1734:Boolean;
      
      private var var_1735:int = -1;
      
      private var var_1732:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1736 = param1;
         var_984 = param2;
         _objId = param3;
         var_1340 = param4;
         _category = param5;
         var_1375 = param6;
         var_2005 = param7;
         var_1737 = param8;
         var_1734 = param9;
         var_2004 = param10;
         var_1732 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1738;
      }
      
      public function get extra() : int
      {
         return var_1482;
      }
      
      public function get classId() : int
      {
         return var_1340;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_2004;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_2005;
      }
      
      public function get stripId() : int
      {
         return var_1736;
      }
      
      public function get stuffData() : String
      {
         return var_1375;
      }
      
      public function get songId() : int
      {
         return var_1735;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1738 = param1;
         var_1482 = param2;
      }
      
      public function get itemType() : String
      {
         return var_984;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1732;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1734;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1737;
      }
   }
}
