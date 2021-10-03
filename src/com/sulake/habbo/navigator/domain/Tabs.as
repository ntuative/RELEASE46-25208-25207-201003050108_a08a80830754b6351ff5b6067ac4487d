package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_506:int = 6;
      
      public static const const_219:int = 5;
      
      public static const const_631:int = 2;
      
      public static const const_333:int = 9;
      
      public static const const_306:int = 4;
      
      public static const const_260:int = 2;
      
      public static const const_637:int = 4;
      
      public static const const_218:int = 8;
      
      public static const const_549:int = 7;
      
      public static const const_272:int = 3;
      
      public static const const_327:int = 1;
      
      public static const const_187:int = 5;
      
      public static const const_385:int = 12;
      
      public static const const_310:int = 1;
      
      public static const const_714:int = 11;
      
      public static const const_595:int = 3;
      
      public static const const_1430:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_387:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_387 = new Array();
         var_387.push(new Tab(_navigator,const_327,const_385,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_406));
         var_387.push(new Tab(_navigator,const_260,const_310,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_406));
         var_387.push(new Tab(_navigator,const_306,const_714,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_980));
         var_387.push(new Tab(_navigator,const_272,const_219,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_406));
         var_387.push(new Tab(_navigator,const_187,const_218,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_689));
         setSelectedTab(const_327);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_387)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_387)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_387)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_306;
      }
      
      public function get tabs() : Array
      {
         return var_387;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
