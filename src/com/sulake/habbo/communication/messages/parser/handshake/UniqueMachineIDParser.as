package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UniqueMachineIDParser implements IMessageParser
   {
       
      
      private var var_810:String;
      
      public function UniqueMachineIDParser()
      {
         super();
         var_810 = "";
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_810 = param1.readString();
         return true;
      }
      
      public function get machineID() : String
      {
         return var_810;
      }
      
      public function flush() : Boolean
      {
         var_810 = "";
         return true;
      }
   }
}
