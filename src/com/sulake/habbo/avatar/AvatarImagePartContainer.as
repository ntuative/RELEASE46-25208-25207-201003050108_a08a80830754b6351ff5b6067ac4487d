package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_1833:int;
      
      private var var_1838:String;
      
      private var var_1455:IActionDefinition;
      
      private var var_1837:Boolean;
      
      private var _color:IPartColor;
      
      private var var_1836:String;
      
      private var var_1834:String;
      
      private var var_1754:Boolean;
      
      private var var_1832:ColorTransform;
      
      private var var_1835:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_1838 = param1;
         var_1836 = param2;
         var_1833 = param3;
         _color = param4;
         _frames = param5;
         var_1455 = param6;
         var_1754 = param7;
         var_1835 = param8;
         var_1834 = param9;
         var_1837 = param10;
         var_1832 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_1754;
      }
      
      public function get partType() : String
      {
         return var_1836;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_1835;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_1837;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_1833;
      }
      
      public function get flippedPartType() : String
      {
         return var_1834;
      }
      
      public function get bodyPartId() : String
      {
         return var_1838;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1455;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_1832;
      }
   }
}
