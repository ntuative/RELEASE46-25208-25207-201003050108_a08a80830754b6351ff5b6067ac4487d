package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1198:String = "WN_CREATED";
      
      public static const const_844:String = "WN_DISABLE";
      
      public static const const_958:String = "WN_DEACTIVATED";
      
      public static const const_788:String = "WN_OPENED";
      
      public static const const_997:String = "WN_CLOSED";
      
      public static const const_792:String = "WN_DESTROY";
      
      public static const const_1492:String = "WN_ARRANGED";
      
      public static const const_399:String = "WN_PARENT_RESIZED";
      
      public static const const_851:String = "WN_ENABLE";
      
      public static const const_918:String = "WN_RELOCATE";
      
      public static const const_839:String = "WN_FOCUS";
      
      public static const const_908:String = "WN_PARENT_RELOCATED";
      
      public static const const_374:String = "WN_PARAM_UPDATED";
      
      public static const const_722:String = "WN_PARENT_ACTIVATED";
      
      public static const const_194:String = "WN_RESIZED";
      
      public static const const_988:String = "WN_CLOSE";
      
      public static const const_849:String = "WN_PARENT_REMOVED";
      
      public static const const_229:String = "WN_CHILD_RELOCATED";
      
      public static const const_688:String = "WN_ENABLED";
      
      public static const const_239:String = "WN_CHILD_RESIZED";
      
      public static const const_872:String = "WN_MINIMIZED";
      
      public static const const_626:String = "WN_DISABLED";
      
      public static const const_210:String = "WN_CHILD_ACTIVATED";
      
      public static const const_389:String = "WN_STATE_UPDATED";
      
      public static const const_658:String = "WN_UNSELECTED";
      
      public static const const_429:String = "WN_STYLE_UPDATED";
      
      public static const const_1422:String = "WN_UPDATE";
      
      public static const const_453:String = "WN_PARENT_ADDED";
      
      public static const const_685:String = "WN_RESIZE";
      
      public static const const_720:String = "WN_CHILD_REMOVED";
      
      public static const const_1441:String = "";
      
      public static const const_832:String = "WN_RESTORED";
      
      public static const const_288:String = "WN_SELECTED";
      
      public static const const_1006:String = "WN_MINIMIZE";
      
      public static const const_845:String = "WN_FOCUSED";
      
      public static const const_1244:String = "WN_LOCK";
      
      public static const const_334:String = "WN_CHILD_ADDED";
      
      public static const const_922:String = "WN_UNFOCUSED";
      
      public static const const_405:String = "WN_RELOCATED";
      
      public static const const_886:String = "WN_DEACTIVATE";
      
      public static const const_1337:String = "WN_CRETAE";
      
      public static const const_954:String = "WN_RESTORE";
      
      public static const const_318:String = "WN_ACTVATED";
      
      public static const const_1172:String = "WN_LOCKED";
      
      public static const const_459:String = "WN_SELECT";
      
      public static const const_936:String = "WN_MAXIMIZE";
      
      public static const const_837:String = "WN_OPEN";
      
      public static const const_504:String = "WN_UNSELECT";
      
      public static const const_1587:String = "WN_ARRANGE";
      
      public static const const_1186:String = "WN_UNLOCKED";
      
      public static const const_1467:String = "WN_UPDATED";
      
      public static const const_945:String = "WN_ACTIVATE";
      
      public static const const_1140:String = "WN_UNLOCK";
      
      public static const const_985:String = "WN_MAXIMIZED";
      
      public static const const_1007:String = "WN_DESTROYED";
      
      public static const const_923:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1590,cancelable);
      }
   }
}
