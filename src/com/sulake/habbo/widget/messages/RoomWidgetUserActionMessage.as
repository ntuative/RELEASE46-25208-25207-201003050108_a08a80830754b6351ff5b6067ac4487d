package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_565:String = "RWUAM_RESPECT_USER";
      
      public static const const_563:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_533:String = "RWUAM_START_TRADING";
      
      public static const const_727:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_529:String = "RWUAM_WHISPER_USER";
      
      public static const const_725:String = "RWUAM_IGNORE_USER";
      
      public static const const_414:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_704:String = "RWUAM_BAN_USER";
      
      public static const const_543:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_411:String = "RWUAM_KICK_USER";
      
      public static const const_640:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_607:String = " RWUAM_RESPECT_PET";
      
      public static const const_351:String = "RWUAM_KICK_BOT";
      
      public static const const_1296:String = "RWUAM_TRAIN_PET";
      
      public static const const_717:String = "RWUAM_PICKUP_PET";
      
      public static const const_668:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_699:String = "RWUAM_REPORT";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         _userId = param2;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
   }
}
