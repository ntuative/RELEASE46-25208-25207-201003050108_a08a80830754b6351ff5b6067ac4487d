package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_759:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_759 = new Array();
         var_759.push(param1.length);
         var_759 = var_759.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_759;
      }
   }
}
