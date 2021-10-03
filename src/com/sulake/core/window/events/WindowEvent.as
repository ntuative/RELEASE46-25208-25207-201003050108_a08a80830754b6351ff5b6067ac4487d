package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_286:String = "WE_CHILD_RESIZED";
      
      public static const const_1355:String = "WE_CLOSE";
      
      public static const const_1356:String = "WE_DESTROY";
      
      public static const const_149:String = "WE_CHANGE";
      
      public static const const_1202:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1489:String = "WE_PARENT_RESIZE";
      
      public static const const_88:String = "WE_UPDATE";
      
      public static const const_1361:String = "WE_MAXIMIZE";
      
      public static const const_363:String = "WE_DESTROYED";
      
      public static const const_966:String = "WE_UNSELECT";
      
      public static const const_1338:String = "WE_MAXIMIZED";
      
      public static const const_1510:String = "WE_UNLOCKED";
      
      public static const const_372:String = "WE_CHILD_REMOVED";
      
      public static const const_170:String = "WE_OK";
      
      public static const const_43:String = "WE_RESIZED";
      
      public static const const_1196:String = "WE_ACTIVATE";
      
      public static const const_265:String = "WE_ENABLED";
      
      public static const const_437:String = "WE_CHILD_RELOCATED";
      
      public static const const_1173:String = "WE_CREATE";
      
      public static const const_723:String = "WE_SELECT";
      
      public static const const_153:String = "";
      
      public static const const_1494:String = "WE_LOCKED";
      
      public static const const_1554:String = "WE_PARENT_RELOCATE";
      
      public static const const_1466:String = "WE_CHILD_REMOVE";
      
      public static const const_1428:String = "WE_CHILD_RELOCATE";
      
      public static const const_1572:String = "WE_LOCK";
      
      public static const const_208:String = "WE_FOCUSED";
      
      public static const const_698:String = "WE_UNSELECTED";
      
      public static const const_1013:String = "WE_DEACTIVATED";
      
      public static const const_1131:String = "WE_MINIMIZED";
      
      public static const const_1483:String = "WE_ARRANGED";
      
      public static const const_1506:String = "WE_UNLOCK";
      
      public static const const_1454:String = "WE_ATTACH";
      
      public static const const_1141:String = "WE_OPEN";
      
      public static const const_1223:String = "WE_RESTORE";
      
      public static const const_1491:String = "WE_PARENT_RELOCATED";
      
      public static const const_1144:String = "WE_RELOCATE";
      
      public static const const_1460:String = "WE_CHILD_RESIZE";
      
      public static const const_1517:String = "WE_ARRANGE";
      
      public static const const_1241:String = "WE_OPENED";
      
      public static const const_1295:String = "WE_CLOSED";
      
      public static const const_1550:String = "WE_DETACHED";
      
      public static const const_1589:String = "WE_UPDATED";
      
      public static const const_1301:String = "WE_UNFOCUSED";
      
      public static const const_421:String = "WE_RELOCATED";
      
      public static const const_1274:String = "WE_DEACTIVATE";
      
      public static const const_193:String = "WE_DISABLED";
      
      public static const const_644:String = "WE_CANCEL";
      
      public static const const_525:String = "WE_ENABLE";
      
      public static const const_1378:String = "WE_ACTIVATED";
      
      public static const const_1248:String = "WE_FOCUS";
      
      public static const const_1473:String = "WE_DETACH";
      
      public static const const_1374:String = "WE_RESTORED";
      
      public static const const_1152:String = "WE_UNFOCUS";
      
      public static const const_50:String = "WE_SELECTED";
      
      public static const const_1216:String = "WE_PARENT_RESIZED";
      
      public static const const_1242:String = "WE_CREATED";
      
      public static const const_1513:String = "WE_ATTACHED";
      
      public static const const_1149:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1590:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1369:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1590 = param3;
         var_1369 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1369;
      }
      
      public function get related() : IWindow
      {
         return var_1590;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1369 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
