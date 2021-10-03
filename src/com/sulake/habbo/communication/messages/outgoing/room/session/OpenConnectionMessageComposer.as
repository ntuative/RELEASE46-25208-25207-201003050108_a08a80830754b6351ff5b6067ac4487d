package com.sulake.habbo.communication.messages.outgoing.room.session
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class OpenConnectionMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int;
      
      private var var_1921:int;
      
      private var var_1922:Boolean;
      
      public function OpenConnectionMessageComposer(param1:Boolean, param2:int, param3:int = 0)
      {
         super();
         _roomId = param2;
         var_1922 = param1;
         var_1921 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [int(var_1922),_roomId,var_1921];
      }
      
      public function dispose() : void
      {
      }
   }
}
