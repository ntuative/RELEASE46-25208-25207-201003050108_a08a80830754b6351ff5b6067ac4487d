package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_561:String;
      
      private var var_1634:int;
      
      private var var_2219:String;
      
      private var var_1004:int;
      
      private var var_1130:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1130;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1130 = param1.readInteger();
         var_2219 = param1.readString();
         var_1634 = param1.readInteger();
         var_561 = param1.readString();
         var_1004 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_2219;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_561;
      }
      
      public function get petType() : int
      {
         return var_1004;
      }
      
      public function get level() : int
      {
         return var_1634;
      }
   }
}
