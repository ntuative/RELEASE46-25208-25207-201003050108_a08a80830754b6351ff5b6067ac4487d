package com.sulake.habbo.room.utils
{
   public class PublicRoomWorldData
   {
       
      
      private var var_1847:Number = 1;
      
      private var var_194:Number = 1;
      
      private var var_2233:String = "";
      
      public function PublicRoomWorldData(param1:String, param2:Number, param3:Number)
      {
         super();
         var_2233 = param1;
         var_194 = param2;
         var_1847 = param3;
      }
      
      public function get scale() : Number
      {
         return var_194;
      }
      
      public function get heightScale() : Number
      {
         return var_1847;
      }
   }
}
