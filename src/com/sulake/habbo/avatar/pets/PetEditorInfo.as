package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_2020:Boolean;
      
      private var var_1677:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         var_2020 = Boolean(parseInt(param1.@club));
         var_1677 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return var_2020;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1677;
      }
   }
}
