package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_646:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_646 = new ByteArray();
         var_646.writeShort(param1);
         var_646.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_646.position = 0;
         if(false)
         {
            _loc1_ = var_646.readShort();
            var_646.position = 0;
         }
         return _loc1_;
      }
   }
}
