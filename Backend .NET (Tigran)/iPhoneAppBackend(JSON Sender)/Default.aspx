<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="iPhoneAppBackend_JSON_Sender_.Default" %>

<!DOCTYPE html>
<html>
<head>
    <meta content="text/html" charset="utf-8"/>
    <link rel="stylesheet" href="assets/css/main.css" />
    <script type="text/javascript" src="assets/js/main.js"></script>
    <title>Countdown! Admin panel</title>
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
            <h1>Countdown! Admin panel </h1>
        </div>
        <div class="header_right">
            <hr class="dotted_right_1"/>
            <hr class="dotted_right_2"/>
            <hr class="dotted_right_3"/>
        </div>
    </div>
    <div class="content">
        <div class="login_form">
                <%
        if(WrongPassword) {
         %>
        <span class="error">Invalid Username or password</span><br />
    <% } %>
          <form id="Form1" runat="server" onsubmit="return TestForSubmit('login');">
            <input type="text" name="username" placeholder="Username" required="true"  />
            <input type="password" name="password" placeholder="Password" required="true"  />
            <button class="sub_button" type="submit">
                <span>Login</span>
            </button>
          </form>
        </div>
    </div>
</div>
</body>
</html>