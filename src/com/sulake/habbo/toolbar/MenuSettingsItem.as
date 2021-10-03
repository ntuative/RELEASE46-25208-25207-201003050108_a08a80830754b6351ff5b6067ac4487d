package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2063:Array;
      
      private var var_2064:String;
      
      private var var_2062:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_2064 = param1;
         var_2063 = param2;
         var_2062 = param3;
      }
      
      public function get menuId() : String
      {
         return var_2064;
      }
      
      public function get yieldList() : Array
      {
         return var_2063;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_2062;
      }
   }
}
