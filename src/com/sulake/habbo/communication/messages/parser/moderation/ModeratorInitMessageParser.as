package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitMessageParser implements IMessageParser
   {
       
      
      private var _roomMessageTemplates:Array;
      
      private var var_1862:Boolean;
      
      private var var_1442:Array;
      
      private var var_1865:Boolean;
      
      private var var_1863:Boolean;
      
      private var var_1864:Boolean;
      
      private var var_159:Array;
      
      private var var_1860:Boolean;
      
      private var var_1861:Boolean;
      
      private var var_1443:Array;
      
      private var var_1859:Boolean;
      
      private var var_1866:Boolean;
      
      public function ModeratorInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get banPermission() : Boolean
      {
         return var_1866;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return var_1862;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_1865;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_1860;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return _roomMessageTemplates;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_1861;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1442;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_159 = [];
         var_1442 = [];
         _roomMessageTemplates = [];
         var_1443 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(!_loc2_.parse(param1))
            {
               return false;
            }
            var_159.push(_loc2_.issueData);
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1442.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1443.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_1860 = param1.readBoolean();
         var_1864 = param1.readBoolean();
         var_1865 = param1.readBoolean();
         var_1863 = param1.readBoolean();
         var_1866 = param1.readBoolean();
         var_1861 = param1.readBoolean();
         var_1862 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _roomMessageTemplates.push(param1.readString());
            _loc4_++;
         }
         var_1859 = param1.readBoolean();
         return true;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_1863;
      }
      
      public function get offenceCategories() : Array
      {
         return var_1443;
      }
      
      public function get issues() : Array
      {
         return var_159;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_1859;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_1864;
      }
   }
}
