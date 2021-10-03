package com.sulake.habbo.navigator
{
   import com.sulake.core.window.components.ITextWindow;
   
   public class CutToHeight implements BinarySearchTest
   {
       
      
      private var var_164:String;
      
      private var var_375:int;
      
      private var var_187:ITextWindow;
      
      public function CutToHeight()
      {
         super();
      }
      
      public function beforeSearch(param1:String, param2:ITextWindow, param3:int) : void
      {
         var_164 = param1;
         var_187 = param2;
         var_375 = param3;
      }
      
      public function test(param1:int) : Boolean
      {
         var_187.text = var_164.substring(0,param1) + "...";
         return var_187.textHeight > var_375;
      }
   }
}
