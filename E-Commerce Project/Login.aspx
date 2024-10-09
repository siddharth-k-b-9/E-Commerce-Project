<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="E_Commerce_Project.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        body {
            background-color: rgba(245,245,245,255);
            
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style7 {
            width: 254px;
            text-align: center;
        }
        .auto-style8 {
            text-align: left;
        }
        .auto-style9 {
            width: 254px;
            text-align: center;
            height: 26px;
        }
        .auto-style10 {
            text-align: center;
            height: 26px;
        }

        /* Add padding to the login form container */
        .login-form-container {
            padding: 30px;
            background-color: white;
            width: 25%;
            margin: 0 auto; /* Center the form horizontally */
            border-radius: 10px; /* Optional: add rounded corners */
            box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.1); /* Optional: add shadow */
        }
        .auto-style12 {
            text-align: left;
            height: 48px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-form-container">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10" colspan="2"></td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">LOGIN</td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style8" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Text="Username :"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox_UName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Text="Password :"></asp:Label>
                        <asp:TextBox ID="TextBox_Password" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style10"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

