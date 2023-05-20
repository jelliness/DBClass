<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modify.aspx.cs" Inherits="ASP_crudBootstrap.Modify" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container my-auto">
            <asp:Label ID="menu_title" CssClass="display-4 justify-content-center font-weight-bold text-success" runat="server" Text="MODIFY PIPOL"></asp:Label>
        </div>
        <div class="container my-auto">             
            <table class="table table-borderless">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
                    </td>
                    <td colspan="5">
                        <asp:TextBox ID="name_box" runat="server" Width="471px"></asp:TextBox>
                    &nbsp;
                        <asp:Button ID="search_btn" CssClass="btn-outline-success" runat="server" Text="Search" OnClick="search_btn_Click1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Address: "></asp:Label>
                    </td>
                    <td colspan="4">
                        <asp:TextBox ID="address_box" runat="server" TextMode="MultiLine" Width="480px" Enabled="False"></asp:TextBox>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Date of Birth: "></asp:Label>
                    </td>
                    <td rowspan="3" colspan="3">
                        <asp:Calendar ID="dob_input" runat="server" Height="239px" Width="404px" Enabled="False"></asp:Calendar>
                    </td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Gender: "></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="gender_input" runat="server" Enabled="False">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Civil Status:"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="cvstat" runat="server" Enabled="False">
                            <asp:ListItem>Single</asp:ListItem>
                            <asp:ListItem>Married</asp:ListItem>
                            <asp:ListItem>Widowed</asp:ListItem>
                            <asp:ListItem>Divorced</asp:ListItem>
                            <asp:ListItem>Separated</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Image ID="clientImage" runat="server" Height="149px" Width="149px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="3">
                        <asp:Label ID="bday_text" runat="server"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:FileUpload ID="uploadedFile" runat="server" Width="333px" Visible="False" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="3"></td>
                    <td colspan="2">
                        <asp:Button ID="upldbtn" runat="server" Text="Upload Picture" Width="196px" Visible="False" />
                    </td>
                </tr>
                <tr>
                    <td colspan="4">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td style="margin-left: 40px">&nbsp;&nbsp;
                        <asp:Button ID="savebtn" runat="server" Text="Save" Enabled="False" Visible="False" OnClick="savebtn_Click1" />
                    </td>
                    <td style="margin-left: 40px">
                        <asp:Button ID="edit_info" runat="server" Text="Edit Info" Enabled="False" OnClick="edit_info_Click1" />
                    </td>
                    <td style="margin-left: 40px">
                        <asp:Button ID="del_info" runat="server" Text="Delete Info" Enabled="False" OnClick="del_info_Click1"/>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:Button ID="back" CssClass="btn-outline-dark" runat="server" Text="Back to Main Menu" OnClick="back_Click1" />
                    </td>
                    <td colspan="2">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>
</html>
