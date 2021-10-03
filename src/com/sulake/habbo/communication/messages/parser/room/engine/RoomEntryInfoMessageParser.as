package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1672:int;
      
      private var var_379:Boolean;
      
      private var var_1673:Boolean;
      
      private var var_761:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1673 = param1.readBoolean();
         if(var_1673)
         {
            var_1672 = param1.readInteger();
            var_379 = param1.readBoolean();
         }
         else
         {
            var_761 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_761 != null)
         {
            var_761.dispose();
            var_761 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_1672;
      }
      
      public function get owner() : Boolean
      {
         return var_379;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_1673;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_761;
      }
   }
}
