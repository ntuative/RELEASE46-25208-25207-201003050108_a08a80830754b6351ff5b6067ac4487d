package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_119:DisplayObject;
      
      private var var_2310:uint;
      
      private var var_852:IWindowToolTipAgentService;
      
      private var var_854:IWindowMouseScalingService;
      
      private var var_240:IWindowContext;
      
      private var var_850:IWindowFocusManagerService;
      
      private var var_851:IWindowMouseListenerService;
      
      private var var_853:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2310 = 0;
         var_119 = param2;
         var_240 = param1;
         var_853 = new WindowMouseDragger(param2);
         var_854 = new WindowMouseScaler(param2);
         var_851 = new WindowMouseListener(param2);
         var_850 = new FocusManager(param2);
         var_852 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_854;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_850;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_852;
      }
      
      public function dispose() : void
      {
         if(var_853 != null)
         {
            var_853.dispose();
            var_853 = null;
         }
         if(var_854 != null)
         {
            var_854.dispose();
            var_854 = null;
         }
         if(var_851 != null)
         {
            var_851.dispose();
            var_851 = null;
         }
         if(var_850 != null)
         {
            var_850.dispose();
            var_850 = null;
         }
         if(var_852 != null)
         {
            var_852.dispose();
            var_852 = null;
         }
         var_240 = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_851;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_853;
      }
   }
}
