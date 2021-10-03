package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_659:int = -1;
      
      public static const const_943:int = -1;
       
      
      private var _y:int = 0;
      
      private var var_1916:int = -1;
      
      private var var_85:int = 0;
      
      private var var_1212:int = 1;
      
      private var var_806:int = 1;
      
      private var var_1917:Boolean = false;
      
      private var var_1918:int = 0;
      
      private var _id:int = 0;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:int = -1, param7:int = 0)
      {
         super();
         _id = param1;
         var_85 = param2;
         _y = param3;
         var_1917 = param5;
         if(param4 < 0)
         {
            param4 = const_659;
         }
         var_806 = param4;
         var_1212 = param4;
         if(param6 >= 0)
         {
            var_1916 = param6;
            var_1918 = param7;
         }
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(var_806 > 0 && param1 > var_806)
         {
            param1 = var_806;
         }
         var_1212 = param1;
      }
      
      public function get frameRepeats() : int
      {
         return var_806;
      }
      
      public function get activeSequenceOffset() : int
      {
         return var_1918;
      }
      
      public function get id() : int
      {
         if(_id >= 0)
         {
            return _id;
         }
         return -_id * Math.random();
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(var_806 < 0)
         {
            return const_659;
         }
         return var_1212;
      }
      
      public function get activeSequence() : int
      {
         return var_1916;
      }
      
      public function get isLastFrame() : Boolean
      {
         return var_1917;
      }
      
      public function get x() : int
      {
         return var_85;
      }
   }
}
