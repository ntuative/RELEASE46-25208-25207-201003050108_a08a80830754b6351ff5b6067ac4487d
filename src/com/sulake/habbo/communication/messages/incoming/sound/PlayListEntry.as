package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1735:int;
      
      private var var_1965:int = 0;
      
      private var var_1967:String;
      
      private var var_1968:int;
      
      private var var_1966:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_1735 = param1;
         var_1968 = param2;
         var_1966 = param3;
         var_1967 = param4;
      }
      
      public function get length() : int
      {
         return var_1968;
      }
      
      public function get name() : String
      {
         return var_1966;
      }
      
      public function get creator() : String
      {
         return var_1967;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_1965;
      }
      
      public function get id() : int
      {
         return var_1735;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_1965 = param1;
      }
   }
}
