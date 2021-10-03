package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_202:String = "RWUIUE_PEER";
      
      public static const const_185:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1312:String = "BOT";
      
      public static const const_933:int = 2;
      
      public static const const_1220:int = 0;
      
      public static const const_805:int = 3;
       
      
      private var var_1287:String = "";
      
      private var var_2188:Boolean = false;
      
      private var var_1609:int = 0;
      
      private var var_1760:int = 0;
      
      private var var_2189:Boolean = false;
      
      private var var_1285:String = "";
      
      private var var_2183:Boolean = false;
      
      private var var_757:int = 0;
      
      private var var_2187:Boolean = true;
      
      private var var_955:int = 0;
      
      private var var_2190:Boolean = false;
      
      private var var_1170:Boolean = false;
      
      private var var_2182:Boolean = false;
      
      private var var_1759:int = 0;
      
      private var var_2184:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_258:Array;
      
      private var var_1172:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1606:int = 0;
      
      private var var_2185:Boolean = false;
      
      private var var_2186:int = 0;
      
      private var var_1758:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_258 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_1760;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1760 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_2188;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_2187;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_2187 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_2183 = param1;
      }
      
      public function get motto() : String
      {
         return var_1287;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_2190 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1170;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1287 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_2185;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1758;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1170 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_2184;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1759 = param1;
      }
      
      public function get badges() : Array
      {
         return var_258;
      }
      
      public function get amIController() : Boolean
      {
         return var_2189;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_2189 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_2185 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_2186 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1758 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1285 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_2183;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_2190;
      }
      
      public function get carryItem() : int
      {
         return var_1759;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1172;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1172 = param1;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_757 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_2186;
      }
      
      public function get realName() : String
      {
         return var_1285;
      }
      
      public function set webID(param1:int) : void
      {
         var_1606 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_258 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_2182 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_2184 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_757;
      }
      
      public function get webID() : int
      {
         return var_1606;
      }
      
      public function set groupId(param1:int) : void
      {
         var_955 = param1;
      }
      
      public function get xp() : int
      {
         return var_1609;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_2188 = param1;
      }
      
      public function get groupId() : int
      {
         return var_955;
      }
      
      public function get canTrade() : Boolean
      {
         return var_2182;
      }
      
      public function set xp(param1:int) : void
      {
         var_1609 = param1;
      }
   }
}
