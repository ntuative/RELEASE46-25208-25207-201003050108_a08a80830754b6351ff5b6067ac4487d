package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2081:int;
      
      private var var_2083:String;
      
      private var var_1942:int;
      
      private var _disposed:Boolean;
      
      private var var_2082:int;
      
      private var var_1943:String;
      
      private var var_1290:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1943 = param1.readString();
         var_2081 = param1.readInteger();
         var_1942 = param1.readInteger();
         var_2083 = param1.readString();
         var_2082 = param1.readInteger();
         var_1290 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_2082;
      }
      
      public function get worldId() : int
      {
         return var_1942;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
      }
      
      public function get unitPropertySet() : String
      {
         return var_1943;
      }
      
      public function get unitPort() : int
      {
         return var_2081;
      }
      
      public function get castLibs() : String
      {
         return var_2083;
      }
      
      public function get nodeId() : int
      {
         return var_1290;
      }
   }
}
