<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDash.aspx.cs" Inherits="E_Commerce_Project.UserDash" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList_Cat" runat="server" RepeatColumns="4">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="145px" Width="145px" ImageUrl='<%# Eval("Category_Image") %>' OnClick="ImageButton1_Click1" CommandArgument='<%# Eval("Category_ID") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Category_Name") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Category_Desc") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
