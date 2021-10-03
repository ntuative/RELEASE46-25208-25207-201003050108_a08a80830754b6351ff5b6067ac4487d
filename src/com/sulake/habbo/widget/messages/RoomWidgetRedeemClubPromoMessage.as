package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRedeemClubPromoMessage extends RoomWidgetMessage
   {
      
      public static const const_540:String = "rwrcp_redeem_club_promo";
       
      
      private var var_2058:String;
      
      private var var_2057:Boolean;
      
      public function RoomWidgetRedeemClubPromoMessage(param1:String, param2:String, param3:Boolean)
      {
         super(param1);
         var_2058 = param2;
         var_2057 = param3;
      }
      
      public function get code() : String
      {
         return var_2058;
      }
      
      public function get isTrial() : Boolean
      {
         return var_2057;
      }
   }
}
