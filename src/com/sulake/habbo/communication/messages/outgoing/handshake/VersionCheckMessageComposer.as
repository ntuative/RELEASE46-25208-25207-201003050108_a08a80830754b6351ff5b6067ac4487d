package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_2072:String;
      
      private var var_1310:String;
      
      private var var_2073:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_2073 = param1;
         var_1310 = param2;
         var_2072 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2073,var_1310,var_2072];
      }
      
      public function dispose() : void
      {
      }
   }
}
