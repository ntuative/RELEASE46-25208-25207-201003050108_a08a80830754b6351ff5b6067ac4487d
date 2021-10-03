package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1490:int = 9;
      
      public static const const_1469:int = 4;
      
      public static const const_1594:int = 1;
      
      public static const const_1272:int = 10;
      
      public static const const_1590:int = 2;
      
      public static const const_1146:int = 7;
      
      public static const const_1362:int = 11;
      
      public static const const_1596:int = 3;
      
      public static const const_1263:int = 8;
      
      public static const const_1365:int = 5;
      
      public static const const_1481:int = 6;
      
      public static const const_1261:int = 12;
       
      
      private var var_2213:String;
      
      private var _roomId:int;
      
      private var var_1124:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_2213;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1124 = param1.readInteger();
         var_2213 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1124;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
