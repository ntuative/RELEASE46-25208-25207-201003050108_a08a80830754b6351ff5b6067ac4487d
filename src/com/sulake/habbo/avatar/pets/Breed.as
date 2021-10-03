package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var var_1110:String;
      
      private var _id:int;
      
      private var var_1755:String = "";
      
      private var var_1757:int;
      
      private var var_1756:String;
      
      private var var_1754:Boolean;
      
      public function Breed(param1:XML)
      {
         super(param1);
         _id = parseInt(param1.@id);
         var_1757 = parseInt(param1.@pattern);
         var_1110 = String(param1.@gender);
         var_1754 = Boolean(parseInt(param1.@colorable));
         var_1755 = String(param1.@localizationKey);
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get localizationKey() : String
      {
         return var_1755;
      }
      
      public function get isColorable() : Boolean
      {
         return var_1754;
      }
      
      public function get gender() : String
      {
         return var_1110;
      }
      
      public function get patternId() : int
      {
         return var_1757;
      }
      
      public function get avatarFigureString() : String
      {
         return var_1756;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         var_1756 = param1;
      }
   }
}
