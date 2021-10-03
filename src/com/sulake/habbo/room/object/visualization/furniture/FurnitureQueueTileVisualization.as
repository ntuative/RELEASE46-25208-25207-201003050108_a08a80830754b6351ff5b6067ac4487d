package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1096:int = 1;
      
      private static const const_1071:int = 3;
      
      private static const const_1097:int = 2;
      
      private static const const_1098:int = 15;
       
      
      private var var_858:int;
      
      private var var_224:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_224 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1097)
         {
            var_224 = new Array();
            var_224.push(const_1096);
            var_858 = const_1098;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_858 > 0)
         {
            --var_858;
         }
         if(var_858 == 0)
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
