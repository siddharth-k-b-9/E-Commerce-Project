<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="E_Commerce_Project.AdminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 117px;
        }
        .auto-style3 {
            width: 122px;
        }
        .auto-style4 {
            width: 117px;
            height: 26px;
        }
        .auto-style5 {
            width: 122px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            width: 126px;
        }
        .auto-style8 {
            width: 297px;
        }
        .auto-style13 {
            width: 717px;
            height: 26px;
        }
        .auto-style17 {
            width: 717px;
        }
        .auto-style18 {
            width: 160px;
        }
        .auto-style19 {
            width: 160px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">
                        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" ForeColor="Black" OnClick="LinkButton1_Click">Category</asp:LinkButton>
                    </td>
                    <td class="auto-style5">
                        <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" ForeColor="Black" OnClick="LinkButton2_Click">Product</asp:LinkButton>
                    </td>
                    <td class="auto-style6">
                        <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" ForeColor="Black">Logout</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:Panel ID="Panel1" runat="server">
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Height="434px" Visible="False">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label4" runat="server" Text="Category :"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox_CatName" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label5" runat="server" Text="Description :"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox_CatDesc" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label6" runat="server" Text="Image :"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:FileUpload ID="FileUploadImage" runat="server" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Insert" />
                    </td>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Category_ID" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                            <Columns>
                                <asp:BoundField DataField="Category_Name" HeaderText="Name" />
                                <asp:BoundField DataField="Category_Desc" HeaderText="Description" />
                                <asp:ImageField DataImageUrlField="Category_Image" HeaderText="Image">
                                    <ControlStyle Height="100px" Width="100px" />
                                </asp:ImageField>
                                <asp:TemplateField HeaderText="Image Upload">
                                    <ItemTemplate>
                                        <asp:FileUpload ID="FileUpload2" runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:CommandField ShowEditButton="True" />
                                <asp:CommandField ShowDeleteButton="True" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" Height="633px" Visible="False">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="Label8" runat="server" Text="Book Name :"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox_PName" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="Label9" runat="server" Text="Description :"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox_PDesc" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="Label10" runat="server" Text="Image :"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:FileUpload ID="FileUpload_PImg" runat="server" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="Label11" runat="server" Text="Price :"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox_PPrice" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="Label12" runat="server" Text="Stock :"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox_PStock" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="Label13" runat="server" Text="Category :"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:DropDownList ID="DropDownList_Cat" runat="server" AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style17">
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Insert" />
                    </td>
                    <td>
                        <asp:Label ID="Label14" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Product_ID" OnRowCancelingEdit="GridView2_RowCancelingEdit" OnRowDeleting="GridView2_RowDeleting" OnRowEditing="GridView2_RowEditing" OnRowUpdating="GridView2_RowUpdating">
                            <Columns>
                                <asp:BoundField DataField="Product_Name" HeaderText="Name" />
                                <asp:BoundField DataField="Product_Details" HeaderText="Description" />
                                <asp:BoundField DataField="Product_Price" HeaderText="Price" />
                                <asp:ImageField DataImageUrlField="Product_Photo" HeaderText="Image">
                                    <ControlStyle Height="150px" Width="100px" />
                                </asp:ImageField>
                                <asp:BoundField DataField="Product_Stock" HeaderText="Stock" />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:FileUpload ID="FileUpload3" runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:CommandField ShowEditButton="True" />
                                <asp:CommandField ShowDeleteButton="True" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </form>
</body>
</html>
