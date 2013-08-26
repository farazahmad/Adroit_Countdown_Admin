<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="in-app-popup.aspx.cs" Inherits="iPhoneAppBackend_JSON_Sender_.in_app_popup" %>


        <!DOCTYPE html>
<html>
<head>
    <meta content="text/html" charset="utf-8"/>
    <link rel="stylesheet" href="assets/css/main.css" />
        <script type="text/javascript" src="assets/js/main.js"></script>
    <title>ADMIN SECTION</title>
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
            <li class="active"><a href="in-app-popup.aspx">In-App Popup</a></li>
            <li><a href="settings.aspx">Rating Popup</a></li>
            <li class="log_out"><a href="Default.aspx">Logout</a></li>
        </ul>
    </div>
    <div class="content">
        <h2>In-App Popup</h2>
        <div class="login_form popup_form">
          <form id="form1" runat="server" onsubmit="return TestForSubmit('popup');">
              <table cellspacing="0" cellpadding="0">
                  <tr>
                      <td><label for="popup_title">Notification Title</label></td>
                      <td><input type="text" id="popup_title" name="title" required="true" value="<%=popupD.title %>" /></td>
                  </tr>
                  <tr>
                      <td><label for="details">Notification Details</label> </td>
                      <td><textarea type="text" id="details" name="details" required="true" ><%=popupD.details %></textarea></td>
                  </tr>
                  <tr>
                      <td><label for="button1">Button 1 ( Right button )</label> </td>
                      <td><input type="text" id="button1" name="button1" required="true"  value="<%=popupD.button1 %>" /></td>
                  </tr>
                  <tr>
                      <td><label for="button2">Button 2 ( Left button )</label></td>
                      <td><input type="text" id="button2" name="button2" required="true" value="<%=popupD.button2 %>" /></td>
                  </tr>
                  <tr>
                      <td></td>
                      <td>
                          <button class="sub_button" type="submit">
                            <span>Update</span>
                          </button>
                      </td>
                  </tr>
              </table>
          </form>
        </div>
    </div>
</div>
</body>
</html>