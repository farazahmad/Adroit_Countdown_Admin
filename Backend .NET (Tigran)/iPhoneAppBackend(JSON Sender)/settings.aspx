<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="settings.aspx.cs" Inherits="iPhoneAppBackend_JSON_Sender_.settings" %>


<!DOCTYPE html>
<html>
<head  runat="server">
    <meta content="text/html" charset="utf-8"/>
    <link rel="stylesheet" href="assets/css/main.css" />
    <script type="text/javascript" src="assets/js/jquery-1.7.1.min.js"></script>
        <script type="text/javascript" src="assets/js/main.js"></script>
    <title></title>
</head>
<body>
<div class="wrapper">
    <div class="header">
        <div class="header_left">
            <hr class="dotted_left_1"/>
            <hr class="dotted_left_2"/>
            <hr class="dotted_left_3"/>
        </div>
        <div class="header_center">
            <h1>ADMIN SECTION</h1>
        </div>
        <div class="header_right">
            <hr class="dotted_right_1"/>
            <hr class="dotted_right_2"/>
            <hr class="dotted_right_3"/>
        </div>
    </div>
    <div class="menu">
        <ul>
            <li><a href="in-app-popup.aspx">In-App Popup</a></li>
            <li class="active"><a href="settings.aspx">Rating Popup</a></li>
            <li class="log_out"><a href="Default.aspx">Logout</a></li>
        </ul>
    </div>
    <div class="content">
        <h2>Rating Popup</h2>
        <div class="settings_form">
          <form id="settingsForm" runat="server" onsubmit="return TestForSubmit('settings');">
              <input type="checkbox" name="open_times" id="open_times"  <%if(settingD.user_open_app == 1) { %> checked <% } %> /><label for="open_times">&nbsp;&nbsp;User Open the app</label>&nbsp;&nbsp;<input type="number" id="open_times_count" name="open_times_count" value="<%=settingD.user_open_app_count %>" /><br/>
              <input type="checkbox" name="after_edit_countdown" id="after_edit_countdown"  <%if(settingD.after_editing_countdown == 1) { %> checked <% } %> /><label for="after_edit_countdown">&nbsp;&nbsp;After editing the countdown</label><br/>
              <input type="checkbox" name="after_edit_countdown_color_home" id="after_edit_countdown_color_home"  <%if(settingD.after_editing_color_countdown == 1) { %> checked <% } %> /><label for="after_edit_countdown_color_home">&nbsp;&nbsp;After editing the color on countdown from Home screen</label><br/>
              <input type="checkbox" name="swipping_events" id="swipping_events"  <%if(settingD.after_swiping_events == 1) { %> checked <% } %>  /><label for="swipping_events">&nbsp;&nbsp;After Swiping Events</label><br/>
              <input type="checkbox" name="share_or_save_event" id="share_or_save_event" <%if (settingD.after_share_or_save == 1) { %> checked <% } %>  /><label for="share_or_save_event">&nbsp;&nbsp;After share or save the event</label><br/>
              <input type="checkbox" name="create_new_event" id="create_new_event"   <%if(settingD.after_crate_new_event == 1) { %> checked <% } %>  /><label for="create_new_event">&nbsp;&nbsp;After Create new event</label><br/>
              <input type="checkbox" name="multiple_countdown_select" id="multiple_countdown_select"  <%if(settingD.selecting_multiple_countdown == 1) { %> checked <% } %>  /><label for="multiple_countdown_select">&nbsp;&nbsp;When the user selects the multiple countdown view</label><br/>
              <input type="checkbox" name="multiple_countdown_fromview_select" id="multiple_countdown_fromview_select"  <%if(settingD.selecting_countdown_in_multiple == 1) { %> checked <% } %>  /><label for="multiple_countdown_fromview_select">&nbsp;&nbsp;When the user selects a countdown from the multiple countdown view</label><br/>
              <button class="sub_button" type="submit">
                  <span>Update</span>
              </button>
          </form>
        </div>
    </div>
</div>
</body>
</html>
