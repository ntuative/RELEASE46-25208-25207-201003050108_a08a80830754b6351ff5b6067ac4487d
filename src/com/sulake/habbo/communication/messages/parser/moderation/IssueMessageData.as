package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_137:int = 1;
      
      public static const const_1270:int = 3;
      
      public static const const_353:int = 2;
       
      
      private var var_2242:int;
      
      private var var_2081:int;
      
      private var var_2238:int;
      
      private var var_1942:int;
      
      private var var_32:int;
      
      private var var_378:int;
      
      private var var_1311:int;
      
      private var var_1896:int;
      
      private var var_975:int;
      
      private var _roomResources:String;
      
      private var var_2241:int;
      
      private var var_2243:int;
      
      private var var_2240:String;
      
      private var var_2222:String;
      
      private var var_2239:int = 0;
      
      private var var_1158:String;
      
      private var _message:String;
      
      private var var_2224:int;
      
      private var var_2237:String;
      
      private var var_1286:int;
      
      private var var_671:String;
      
      private var var_2236:String;
      
      private var var_1444:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_975 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_2239 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_2243;
      }
      
      public function set roomName(param1:String) : void
      {
         var_671 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_2241 = param1;
      }
      
      public function get state() : int
      {
         return var_32;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_671;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1942 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_32 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_2081;
      }
      
      public function get priority() : int
      {
         return var_2242 + var_2239;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1896 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_2222;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1444) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1286;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_2243 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1311;
      }
      
      public function set flatType(param1:String) : void
      {
         var_2240 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_2241;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1942;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_2236 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1158 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1896;
      }
      
      public function set priority(param1:int) : void
      {
         var_2242 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_2081 = param1;
      }
      
      public function get flatType() : String
      {
         return var_2240;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_2238 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_2222 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_2224 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1158;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1311 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_2238;
      }
      
      public function set flatId(param1:int) : void
      {
         var_378 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1286 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1444 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_2224;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_2237 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1444;
      }
      
      public function get reportedUserId() : int
      {
         return var_975;
      }
      
      public function get flatId() : int
      {
         return var_378;
      }
      
      public function get flatOwnerName() : String
      {
         return var_2236;
      }
      
      public function get reporterUserName() : String
      {
         return var_2237;
      }
   }
}
