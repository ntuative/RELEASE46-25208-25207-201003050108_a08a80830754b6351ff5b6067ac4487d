package com.sulake.habbo.moderation
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IDropMenuWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.moderator.ModMessageMessageComposer;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import flash.events.Event;
   
   public class SendMsgsCtrl implements IDisposable, TrackedWindow
   {
       
      
      private var var_1351:String;
      
      private var _disposed:Boolean;
      
      private var var_1472:String;
      
      private var var_1352:int;
      
      private var var_48:ModerationManager;
      
      private var var_789:IDropMenuWindow;
      
      private var var_430:ITextFieldWindow;
      
      private var var_52:IFrameWindow;
      
      private var var_294:Boolean = true;
      
      public function SendMsgsCtrl(param1:ModerationManager, param2:int, param3:String, param4:String)
      {
         super();
         var_48 = param1;
         var_1352 = param2;
         var_1472 = param3;
         var_1351 = param4;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_208)
         {
            return;
         }
         if(!var_294)
         {
            return;
         }
         var_430.text = "";
         var_294 = false;
      }
      
      public function getFrame() : IFrameWindow
      {
         return var_52;
      }
      
      public function getId() : String
      {
         return var_1472;
      }
      
      private function onSendMessageButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Sending message...");
         if(var_294 || false)
         {
            var_48.windowManager.alert("Alert","You must input a message to the user",0,onAlertClose);
            return;
         }
         var_48.connection.send(new ModMessageMessageComposer(var_1352,var_430.text,var_1351));
         this.dispose();
      }
      
      public function show() : void
      {
         var_52 = IFrameWindow(var_48.getXmlWindow("send_msgs"));
         var_52.caption = "Msg To: " + var_1472;
         var_52.findChildByName("send_message_but").procedure = onSendMessageButton;
         var_430 = ITextFieldWindow(var_52.findChildByName("message_input"));
         var_430.procedure = onInputClick;
         var_789 = IDropMenuWindow(var_52.findChildByName("msgTemplatesSelect"));
         prepareMsgSelect(var_789);
         var_789.procedure = onSelectTemplate;
         var _loc1_:IWindow = var_52.findChildByTag("close");
         _loc1_.procedure = onClose;
         var_52.visible = true;
      }
      
      private function prepareMsgSelect(param1:IDropMenuWindow) : void
      {
         Logger.log("MSG TEMPLATES: " + var_48.initMsg.messageTemplates.length);
         param1.populate(var_48.initMsg.messageTemplates);
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_52 != null)
         {
            var_52.destroy();
            var_52 = null;
         }
         var_789 = null;
         var_430 = null;
         var_48 = null;
      }
      
      private function onSelectTemplate(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_50)
         {
            return;
         }
         var _loc3_:String = var_48.initMsg.messageTemplates["null"];
         if(_loc3_ != null)
         {
            var_294 = false;
            var_430.text = _loc3_;
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      private function onClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         dispose();
      }
      
      private function onAlertClose(param1:IAlertDialog, param2:Event) : void
      {
         param1.dispose();
      }
      
      public function getType() : int
      {
         return WindowTracker.const_1305;
      }
   }
}
