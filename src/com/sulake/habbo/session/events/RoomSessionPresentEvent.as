package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPresentEvent extends RoomSessionEvent
   {
      
      public static const const_253:String = "RSPE_PRESENT_OPENED";
       
      
      private var var_1340:int = 0;
      
      private var var_984:String = "";
      
      public function RoomSessionPresentEvent(param1:String, param2:IRoomSession, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param2,param5,param6);
         var_1340 = param3;
         var_984 = param4;
      }
      
      public function get classId() : int
      {
         return var_1340;
      }
      
      public function get itemType() : String
      {
         return var_984;
      }
   }
}
