package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_1986:Number;
      
      private var var_573:Number = 0;
      
      private var var_1985:Number;
      
      private var var_574:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_1986 = param1;
         var_1985 = param2;
      }
      
      public function update() : void
      {
         var_574 += var_1985;
         var_573 += var_574;
         if(var_573 > 0)
         {
            var_573 = 0;
            var_574 = var_1986 * -1 * var_574;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_574 = param1;
         var_573 = 0;
      }
      
      public function get location() : Number
      {
         return var_573;
      }
   }
}
