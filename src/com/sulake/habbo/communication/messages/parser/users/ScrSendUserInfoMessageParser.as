package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2211:int;
      
      private var var_1211:String;
      
      private var var_2208:int;
      
      private var var_2210:int;
      
      private var var_2209:int;
      
      private var var_2212:Boolean;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function get productName() : String
      {
         return var_1211;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_2212;
      }
      
      public function get responseType() : int
      {
         return var_2210;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_2208;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1211 = param1.readString();
         var_2208 = param1.readInteger();
         var_2211 = param1.readInteger();
         var_2209 = param1.readInteger();
         var_2210 = param1.readInteger();
         var_2212 = param1.readBoolean();
         return true;
      }
      
      public function get memberPeriods() : int
      {
         return var_2211;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_2209;
      }
   }
}
