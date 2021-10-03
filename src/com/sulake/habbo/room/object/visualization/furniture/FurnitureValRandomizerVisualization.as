package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1070:int = 31;
      
      private static const const_1071:int = 32;
      
      private static const const_487:int = 30;
      
      private static const const_761:int = 20;
      
      private static const const_488:int = 10;
       
      
      private var var_558:Boolean = false;
      
      private var var_224:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_224 = new Array();
         super();
         super.setAnimation(const_487);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            var_558 = true;
            var_224 = new Array();
            var_224.push(const_1070);
            var_224.push(const_1071);
            return;
         }
         if(param1 > 0 && param1 <= const_488)
         {
            if(var_558)
            {
               var_558 = false;
               var_224 = new Array();
               if(_direction == 2)
               {
                  var_224.push(const_761 + 5 - param1);
                  var_224.push(const_488 + 5 - param1);
               }
               else
               {
                  var_224.push(const_761 + param1);
                  var_224.push(const_488 + param1);
               }
               var_224.push(const_487);
               return;
            }
            super.setAnimation(const_487);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
