package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomChatlogData
   {
       
      
      private var var_671:String;
      
      private var var_1553:Array;
      
      private var var_1554:Boolean;
      
      private var _roomId:int;
      
      public function RoomChatlogData(param1:IMessageDataWrapper)
      {
         var_1553 = new Array();
         super();
         var_1554 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_671 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_1553.push(new ChatlineData(param1));
            _loc3_++;
         }
         Logger.log("READ ROOMCHATLOGDATA: " + var_1554 + ", " + _roomId + ", " + var_671 + ", " + chatlog.length);
      }
      
      public function get isPublic() : Boolean
      {
         return var_1554;
      }
      
      public function get roomName() : String
      {
         return var_671;
      }
      
      public function get chatlog() : Array
      {
         return var_1553;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
