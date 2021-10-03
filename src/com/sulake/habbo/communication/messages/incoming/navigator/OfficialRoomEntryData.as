package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1224:int = 4;
      
      public static const const_522:int = 3;
      
      public static const const_523:int = 2;
      
      public static const const_931:int = 1;
       
      
      private var var_1803:String;
      
      private var _disposed:Boolean;
      
      private var var_1686:int;
      
      private var var_1804:Boolean;
      
      private var var_887:String;
      
      private var var_778:PublicRoomData;
      
      private var var_1801:int;
      
      private var _index:int;
      
      private var var_1802:String;
      
      private var _type:int;
      
      private var var_1645:String;
      
      private var var_777:GuestRoomData;
      
      private var var_1800:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_1803 = param1.readString();
         var_1800 = param1.readString();
         var_1804 = param1.readInteger() == 1;
         var_1802 = param1.readString();
         var_887 = param1.readString();
         var_1801 = param1.readInteger();
         var_1686 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_931)
         {
            var_1645 = param1.readString();
         }
         else if(_type == const_522)
         {
            var_778 = new PublicRoomData(param1);
         }
         else if(_type == const_523)
         {
            var_777 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_1801;
      }
      
      public function get popupCaption() : String
      {
         return var_1803;
      }
      
      public function get userCount() : int
      {
         return var_1686;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_1804;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_931)
         {
            return 0;
         }
         if(this.type == const_523)
         {
            return this.var_777.maxUserCount;
         }
         if(this.type == const_522)
         {
            return this.var_778.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_1800;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_777 != null)
         {
            this.var_777.dispose();
            this.var_777 = null;
         }
         if(this.var_778 != null)
         {
            this.var_778.dispose();
            this.var_778 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_777;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_1802;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_778;
      }
      
      public function get picRef() : String
      {
         return var_887;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1645;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
