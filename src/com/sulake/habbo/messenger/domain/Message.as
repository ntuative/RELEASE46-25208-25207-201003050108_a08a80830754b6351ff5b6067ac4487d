package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_729:int = 2;
      
      public static const const_982:int = 6;
      
      public static const const_684:int = 1;
      
      public static const const_737:int = 3;
      
      public static const const_787:int = 4;
      
      public static const const_624:int = 5;
       
      
      private var var_2133:String;
      
      private var var_1054:int;
      
      private var var_1796:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_1054 = param2;
         var_1796 = param3;
         var_2133 = param4;
      }
      
      public function get time() : String
      {
         return var_2133;
      }
      
      public function get senderId() : int
      {
         return var_1054;
      }
      
      public function get messageText() : String
      {
         return var_1796;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
