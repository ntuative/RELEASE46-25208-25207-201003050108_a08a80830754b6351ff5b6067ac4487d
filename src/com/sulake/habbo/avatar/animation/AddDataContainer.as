package com.sulake.habbo.avatar.animation
{
   public class AddDataContainer
   {
       
      
      private var var_1413:String;
      
      private var var_1428:String;
      
      private var var_1003:String;
      
      private var var_396:Number = 1;
      
      private var _id:String;
      
      public function AddDataContainer(param1:XML)
      {
         super();
         _id = String(param1.@id);
         var_1413 = String(param1.@align);
         var_1003 = String(param1.@base);
         var_1428 = String(param1.@ink);
         var _loc2_:String = String(param1.@blend);
         if(_loc2_.length > 0)
         {
            var_396 = Number(_loc2_);
            if(var_396 > 1)
            {
               var_396 /= 100;
            }
         }
      }
      
      public function get align() : String
      {
         return var_1413;
      }
      
      public function get ink() : String
      {
         return var_1428;
      }
      
      public function get base() : String
      {
         return var_1003;
      }
      
      public function get isBlended() : Boolean
      {
         return var_396 != 1;
      }
      
      public function get blend() : Number
      {
         return var_396;
      }
      
      public function get id() : String
      {
         return _id;
      }
   }
}
