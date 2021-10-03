package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_573:RoomObjectLocationCacheItem = null;
      
      private var var_175:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         var_573 = new RoomObjectLocationCacheItem(param1);
         var_175 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return var_573;
      }
      
      public function dispose() : void
      {
         if(var_573 != null)
         {
            var_573.dispose();
            var_573 = null;
         }
         if(var_175 != null)
         {
            var_175.dispose();
            var_175 = null;
         }
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return var_175;
      }
   }
}
