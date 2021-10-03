package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LagWarningReportMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class LagWarningLogger
   {
      
      public static const const_944:int = 0;
      
      public static const WARNING_TYPE_CHAT_DELAY:int = 1;
       
      
      private var var_1324:Boolean = true;
      
      private var var_1343:int = 0;
      
      private var var_844:int = 0;
      
      private var var_1272:int = 0;
      
      private var var_843:int = 0;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_1341:int = 15;
      
      private var var_168:IHabboConfigurationManager;
      
      private var _connection:IConnection;
      
      private var var_1342:int = 60;
      
      public function LagWarningLogger()
      {
         super();
         var_1272 = getTimer();
      }
      
      public function logWarnings() : void
      {
         if(!var_1324)
         {
            return;
         }
         if(nothingToReport)
         {
            return;
         }
         var _loc1_:LagWarningReportMessageComposer = new LagWarningReportMessageComposer(var_844,var_843);
         if(_connection != null)
         {
            _connection.send(_loc1_);
         }
         resetLog();
         ++var_1343;
      }
      
      private function get nothingToReport() : Boolean
      {
         return var_844 == 0 && var_843 == 0;
      }
      
      private function resetLog() : void
      {
         var_844 = 0;
         var_843 = 0;
      }
      
      public function update(param1:uint) : void
      {
         if(!var_1324)
         {
            return;
         }
         if(getTimer() - var_1272 > var_1342 * 1000 && var_1343 < var_1341)
         {
            var_1272 = getTimer();
            logWarnings();
         }
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_168 = param1;
         var_1342 = int(var_168.getKey("lagwarninglog.interval","60"));
         var_1341 = int(var_168.getKey("lagwarninglog.reportlimit","15"));
         var_1324 = Boolean(int(var_168.getKey("lagwarninglog.enabled","1")));
      }
      
      public function registerWarning(param1:int) : void
      {
         switch(param1)
         {
            case WARNING_TYPE_CHAT_DELAY:
               var_843 += 1;
            case const_944:
               var_844 += 1;
         }
      }
      
      public function set communication(param1:IHabboCommunicationManager) : void
      {
         _communication = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
   }
}
