package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_337:Number = 0.5;
      
      private static const const_743:int = 3;
      
      private static const const_1031:Number = 1;
       
      
      private var var_1663:Boolean = false;
      
      private var var_1658:Boolean = false;
      
      private var var_943:int = 0;
      
      private var var_243:Vector3d = null;
      
      private var var_1659:int = 0;
      
      private var var_1661:int = 0;
      
      private var var_1662:Boolean = false;
      
      private var var_1657:int = -2;
      
      private var var_1664:Boolean = false;
      
      private var var_1666:int = 0;
      
      private var var_1660:int = -1;
      
      private var var_370:Vector3d = null;
      
      private var var_1665:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_1659;
      }
      
      public function get targetId() : int
      {
         return var_1660;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_1666 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_1659 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_1663 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_1660 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_1658 = param1;
      }
      
      public function dispose() : void
      {
         var_370 = null;
         var_243 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_370 == null)
         {
            var_370 = new Vector3d();
         }
         var_370.assign(param1);
         var_943 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_1657;
      }
      
      public function get screenHt() : int
      {
         return var_1665;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_1661 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_243;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_1665 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_1666;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_1663;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_1658;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_370 != null && var_243 != null)
         {
            ++var_943;
            _loc2_ = Vector3d.dif(var_370,var_243);
            if(_loc2_.length <= const_337)
            {
               var_243 = var_370;
               var_370 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_337 * (const_743 + 1))
               {
                  _loc2_.mul(const_337);
               }
               else if(var_943 <= const_743)
               {
                  _loc2_.mul(const_337);
               }
               else
               {
                  _loc2_.mul(const_1031);
               }
               var_243 = Vector3d.sum(var_243,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_1662 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_1661;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_1664 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_1657 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_243 != null)
         {
            return;
         }
         var_243 = new Vector3d();
         var_243.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_1662;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_1664;
      }
   }
}
