package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var _removeSetType:String;
      
      private var var_1432:int = -1;
      
      private var var_1163:Boolean;
      
      private var var_1164:String;
      
      private var var_1830:String;
      
      public function PartDefinition(param1:XML)
      {
         super();
         var_1830 = String(param1["set-type"]);
         var_1164 = String(param1["flipped-set-type"]);
         _removeSetType = String(param1["remove-set-type"]);
         var_1163 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return var_1432 >= 0;
      }
      
      public function get method_3() : String
      {
         return var_1164;
      }
      
      public function get staticId() : int
      {
         return var_1432;
      }
      
      public function set staticId(param1:int) : void
      {
         var_1432 = param1;
      }
      
      public function get appendToFigure() : Boolean
      {
         return var_1163;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         var_1163 = param1;
      }
      
      public function set method_3(param1:String) : void
      {
         var_1164 = param1;
      }
      
      public function get setType() : String
      {
         return var_1830;
      }
      
      public function get removeSetType() : String
      {
         return _removeSetType;
      }
   }
}
