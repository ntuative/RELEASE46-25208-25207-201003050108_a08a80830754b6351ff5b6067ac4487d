package com.sulake.habbo.communication.messages.outgoing.catalog
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class SelectClubGiftComposer implements IMessageComposer
   {
       
      
      private var var_1337:String;
      
      public function SelectClubGiftComposer(param1:String)
      {
         super();
         var_1337 = param1;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1337];
      }
      
      public function dispose() : void
      {
         var_1337 = null;
      }
   }
}
