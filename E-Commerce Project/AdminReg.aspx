<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminReg.aspx.cs" Inherits="E_Commerce_Project.Admin_Reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            background-color: rgba(245,245,245,255);
            
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style5 {
            height: 29px;
            width: 752px;
        }
        .auto-style6 {
            width: 188px;
        }
        .auto-style7 {
            height: 29px;
            width: 188px;
            text-align: left;
        }
        .auto-style11 {
            width: 188px;
            text-align: left;
        }
        .auto-style15 {
            width: 433px;
        }
        .AdminReg-form-container {
            padding: 30px;
            background-color: white;
            width: 50%;
            margin: 0 auto; /* Center the form horizontally */
            border-radius: 10px; /* Optional: add rounded corners */
            box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.1); /* Optional: add shadow */
        }
        .auto-style20 {
            width: 33px;
        }
        .auto-style23 {
            text-align: right;
        }
        .auto-style24 {
            width: 752px;
        }
        .auto-style25 {
            text-align: left;
        }
        .auto-style26 {
            height: 29px;
            text-align: left;
        }
        .auto-style27 {
            text-align: left;
            height: 48px;
        }
        .auto-style28 {
            width: 188px;
            text-align: left;
            height: 48px;
        }
        .auto-style29 {
            width: 752px;
            height: 48px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="AdminReg-form-container">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2" colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style25" colspan="5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Admin Registration</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style25" colspan="2">
                    <asp:Label ID="Label2" runat="server" Text="Name :  "></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox_Name" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style24">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_Name" ErrorMessage="Enter your name."></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style23" colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26" colspan="2">
                    <asp:Label ID="Label3" runat="server" Text="E-Mail :"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox_Mail" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox_Mail" ErrorMessage="Enter your E-Mail address." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style23" colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style27"></td>
                <td class="auto-style27" colspan="2">
                    <asp:Label ID="Label4" runat="server" Text="Phone :"></asp:Label>
                </td>
                <td class="auto-style28">
                    <asp:TextBox ID="TextBox_Phone" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style29">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox_Phone" ErrorMessage="Enter your phone number." ValidationExpression="^[6789]\d{9}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style23" colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26" colspan="2">
                    <asp:Label ID="Label5" runat="server" Text="Username :"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox_UName" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_UName" ErrorMessage="Enter a username."></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style23" colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style25" colspan="2">
                    <asp:Label ID="Label6" runat="server" Text="Password :"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox_Password" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style24">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style23" colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style25" colspan="2">
                    <asp:Label ID="Label7" runat="server" Text="Confirm Password :"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style24">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox_Password" ControlToValidate="TextBox6" ErrorMessage="Password not matching."></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="6">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="6">
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
            </tr>
        </table>
       </div>
    </form>
</body>
</html>
