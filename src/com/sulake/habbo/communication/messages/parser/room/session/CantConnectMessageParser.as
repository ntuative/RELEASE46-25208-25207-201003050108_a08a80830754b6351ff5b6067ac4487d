package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1529:int = 2;
      
      public static const const_312:int = 4;
      
      public static const const_1249:int = 1;
      
      public static const const_1158:int = 3;
       
      
      private var var_1066:int = 0;
      
      private var var_881:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_1066;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1066 = param1.readInteger();
         if(var_1066 == 3)
         {
            var_881 = param1.readString();
         }
         else
         {
            var_881 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_1066 = 0;
         var_881 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_881;
      }
   }
}
