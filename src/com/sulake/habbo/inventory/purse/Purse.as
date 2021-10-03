package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1894:Boolean = false;
      
      private var var_1895:int = 0;
      
      private var var_1652:int = 0;
      
      private var var_1893:int = 0;
      
      private var var_1433:int = 0;
      
      private var var_1651:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1433 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_1895;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_1894;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_1894 = param1;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_1895 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1652 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1433;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_1893 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1652;
      }
      
      public function get pixelBalance() : int
      {
         return var_1893;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1651 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1651;
      }
   }
}
