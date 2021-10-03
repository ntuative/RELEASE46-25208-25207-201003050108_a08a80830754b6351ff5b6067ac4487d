package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PlaceObjectErrorMessageParser implements IMessageParser
   {
       
      
      private var var_1124:int;
      
      public function PlaceObjectErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_1124 = 0;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1124;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1124 = param1.readInteger();
         return true;
      }
   }
}
