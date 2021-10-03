package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1636:int;
      
      private var var_561:String;
      
      private var var_1634:int;
      
      private var var_1635:int;
      
      private var var_1637:int;
      
      private var var_1714:int;
      
      private var _nutrition:int;
      
      private var var_1130:int;
      
      private var var_1712:int;
      
      private var var_1713:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1640:int;
      
      private var var_1715:int;
      
      public function PetInfoMessageParser()
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
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_1714;
      }
      
      public function flush() : Boolean
      {
         var_1130 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_1712;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_1713;
      }
      
      public function get maxNutrition() : int
      {
         return var_1715;
      }
      
      public function get figure() : String
      {
         return var_561;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1635;
      }
      
      public function get petId() : int
      {
         return var_1130;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1130 = param1.readInteger();
         _name = param1.readString();
         var_1634 = param1.readInteger();
         var_1712 = param1.readInteger();
         var_1637 = param1.readInteger();
         var_1713 = param1.readInteger();
         _energy = param1.readInteger();
         var_1714 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_1715 = param1.readInteger();
         var_561 = param1.readString();
         var_1635 = param1.readInteger();
         var_1640 = param1.readInteger();
         var_1636 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1637;
      }
      
      public function get ownerId() : int
      {
         return var_1640;
      }
      
      public function get age() : int
      {
         return var_1636;
      }
   }
}
