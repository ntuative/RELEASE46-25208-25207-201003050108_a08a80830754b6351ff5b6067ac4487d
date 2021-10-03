package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1067:int = 80;
       
      
      private var var_475:Map;
      
      private var var_671:String = "";
      
      private var var_1221:Array;
      
      public function UserRegistry()
      {
         var_475 = new Map();
         var_1221 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_475.getValue(var_1221.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_671;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_475.getValue(param1) != null)
         {
            var_475.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_671);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_671 == "")
         {
            var_1221.push(param1);
         }
         var_475.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_475;
      }
      
      public function unregisterRoom() : void
      {
         var_671 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_475.length > const_1067)
         {
            _loc1_ = var_475.getKey(0);
            var_475.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_671 = param1;
         if(var_671 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
