package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1390:int = 10;
       
      
      private var var_1376:NavigatorSettingsMessageParser;
      
      private var var_1105:int;
      
      private var var_1591:int;
      
      private var var_1592:Boolean;
      
      private var var_934:Array;
      
      private var var_748:Dictionary;
      
      private var var_933:Array;
      
      private var var_2275:int;
      
      private var var_1596:int;
      
      private var var_1593:int;
      
      private var var_1595:int;
      
      private var var_528:PublicRoomShortData;
      
      private var var_368:RoomEventData;
      
      private var var_120:MsgWithRequestId;
      
      private var var_1594:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_1597:Boolean;
      
      private var var_183:GuestRoomData;
      
      private var var_622:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_934 = new Array();
         var_933 = new Array();
         var_748 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_1591;
      }
      
      public function get eventMod() : Boolean
      {
         return var_1597;
      }
      
      public function startLoading() : void
      {
         this.var_622 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_1597 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_368 != null)
         {
            var_368.dispose();
         }
         var_368 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_120 != null && var_120 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_120 != null && var_120 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_120 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_183;
      }
      
      public function get allCategories() : Array
      {
         return var_934;
      }
      
      public function onRoomExit() : void
      {
         if(var_368 != null)
         {
            var_368.dispose();
            var_368 = null;
         }
         if(var_528 != null)
         {
            var_528.dispose();
            var_528 = null;
         }
         if(var_183 != null)
         {
            var_183.dispose();
            var_183 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_120 = param1;
         var_622 = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1376;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_120 = param1;
         var_622 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_528 = null;
         var_183 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_528 = param1.publicSpace;
            var_368 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2275 = param1.limit;
         this.var_1105 = param1.favouriteRoomIds.length;
         this.var_748 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_748[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_120 as PopularRoomTagsData;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_528;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_1592;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_120 = param1;
         var_622 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1593 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_183 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_622;
      }
      
      public function get visibleCategories() : Array
      {
         return var_933;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_934 = param1;
         var_933 = new Array();
         for each(_loc2_ in var_934)
         {
            if(_loc2_.visible)
            {
               var_933.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_1596;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_1595;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1376 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_120 == null)
         {
            return;
         }
         var_120.dispose();
         var_120 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_368;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_748[param1] = !!param2 ? "yes" : null;
         var_1105 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_120 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1593;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_120 != null && var_120 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_1592 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_1596 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_1594 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_183 != null)
         {
            var_183.dispose();
         }
         var_183 = param1;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_183 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1376.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1105 >= var_2275;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_1595 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_1594;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_183 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_1591 = param1;
      }
   }
}
