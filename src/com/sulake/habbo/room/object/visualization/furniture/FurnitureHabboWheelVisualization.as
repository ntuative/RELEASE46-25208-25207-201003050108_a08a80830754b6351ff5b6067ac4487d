package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1070:int = 31;
      
      private static const const_1071:int = 32;
      
      private static const const_761:int = 10;
      
      private static const const_488:int = 20;
       
      
      private var var_558:Boolean = false;
      
      private var var_224:Array;
      
      public function FurnitureHabboWheelVisualization()
      {
         var_224 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_558 = true;
            var_224 = new Array();
            var_224.push(const_1070);
            var_224.push(const_1071);
            return;
         }
         if(param1 > 0 && param1 <= const_761)
         {
            if(var_558)
            {
               var_558 = false;
               var_224 = new Array();
               var_224.push(const_761 + param1);
               var_224.push(const_488 + param1);
               var_224.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
         {
            if(false)
            {
               super.setAnimation(var_224.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
