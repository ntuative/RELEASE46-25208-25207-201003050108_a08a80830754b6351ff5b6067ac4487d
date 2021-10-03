package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1562:GarbageMonitor = null;
      
      private var var_1272:int = 0;
      
      private var var_1145:Boolean = false;
      
      private var var_1775:String = "";
      
      private var var_1561:String = "";
      
      private var var_358:Number = 0;
      
      private var var_1341:int = 10;
      
      private var var_2326:Array;
      
      private var var_620:int = 0;
      
      private var var_1342:int = 60;
      
      private var var_1082:int = 0;
      
      private var var_1081:int = 0;
      
      private var var_1774:String = "";
      
      private var var_2227:Number = 0;
      
      private var var_1344:int = 1000;
      
      private var var_2226:Boolean = true;
      
      private var var_2228:Number = 0.15;
      
      private var var_168:IHabboConfigurationManager = null;
      
      private var var_1772:String = "";
      
      private var var_1343:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2326 = [];
         super();
         var_1561 = Capabilities.version;
         var_1775 = Capabilities.os;
         var_1145 = Capabilities.isDebugger;
         var_1772 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1562 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1272 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1562.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1562.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_358;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1342 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1561;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_1081;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1344)
         {
            ++var_1082;
            _loc3_ = true;
         }
         else
         {
            ++var_620;
            if(var_620 <= 1)
            {
               var_358 = param1;
            }
            else
            {
               _loc4_ = Number(var_620);
               var_358 = var_358 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1272 > var_1342 * 1000 && var_1343 < var_1341)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_358);
            _loc5_ = true;
            if(var_2226 && var_1343 > 0)
            {
               _loc6_ = differenceInPercents(var_2227,var_358);
               if(_loc6_ < var_2228)
               {
                  _loc5_ = false;
               }
            }
            var_1272 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_2227 = var_358;
               if(sendReport())
               {
                  ++var_1343;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1341 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1344 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_1772,var_1561,var_1775,var_1774,var_1145,_loc4_,_loc3_,var_1081,var_358,var_1082);
            _connection.send(_loc1_);
            var_1081 = 0;
            var_358 = 0;
            var_620 = 0;
            var_1082 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_168 = param1;
         var_1342 = int(var_168.getKey("performancetest.interval","60"));
         var_1344 = int(var_168.getKey("performancetest.slowupdatelimit","1000"));
         var_1341 = int(var_168.getKey("performancetest.reportlimit","10"));
         var_2228 = Number(var_168.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_2226 = Boolean(int(var_168.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
