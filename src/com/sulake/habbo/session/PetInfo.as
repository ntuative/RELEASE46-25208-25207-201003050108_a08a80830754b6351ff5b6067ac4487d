package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1634:int;
      
      private var var_1635:int;
      
      private var var_1637:int;
      
      private var var_1632:int;
      
      private var _nutrition:int;
      
      private var var_1130:int;
      
      private var var_1639:int;
      
      private var var_1633:int;
      
      private var _energy:int;
      
      private var var_1636:int;
      
      private var var_1638:int;
      
      private var _ownerName:String;
      
      private var var_1640:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1634;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function set respect(param1:int) : void
      {
         var_1635 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         _energy = param1;
      }
      
      public function set level(param1:int) : void
      {
         var_1634 = param1;
      }
      
      public function get petId() : int
      {
         return var_1130;
      }
      
      public function get experienceMax() : int
      {
         return var_1633;
      }
      
      public function get nutritionMax() : int
      {
         return var_1632;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_1639 = param1;
      }
      
      public function get ownerId() : int
      {
         return var_1640;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function set petId(param1:int) : void
      {
         var_1130 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         _nutrition = param1;
      }
      
      public function get energyMax() : int
      {
         return var_1638;
      }
      
      public function get respect() : int
      {
         return var_1635;
      }
      
      public function get levelMax() : int
      {
         return var_1639;
      }
      
      public function set ownerName(param1:String) : void
      {
         _ownerName = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_1633 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1637 = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_1632 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         var_1640 = param1;
      }
      
      public function get experience() : int
      {
         return var_1637;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function set energyMax(param1:int) : void
      {
         var_1638 = param1;
      }
      
      public function set age(param1:int) : void
      {
         var_1636 = param1;
      }
      
      public function get age() : int
      {
         return var_1636;
      }
   }
}
