package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_671:String;
      
      private var var_2114:int;
      
      private var var_1554:Boolean;
      
      private var _roomId:int;
      
      private var var_2115:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1554 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_671 = param1.readString();
         var_2115 = param1.readInteger();
         var_2114 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1554;
      }
      
      public function get roomName() : String
      {
         return var_671;
      }
      
      public function get enterMinute() : int
      {
         return var_2114;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_2115;
      }
   }
}
