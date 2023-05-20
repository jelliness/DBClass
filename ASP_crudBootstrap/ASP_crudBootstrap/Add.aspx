<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="ASP_crudBootstrap.Add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container my-auto">
            <asp:Label ID="menu_title" CssClass="display-4 justify-content-center font-weight-bold text-warning" runat="server" Text="ADD PIPOL"></asp:Label>
        </div>
        <div class="container">
            <table class="table table-borderless">
                <tr>
                    <td><asp:Label ID="namelbl" runat="server" Text="Name:"></asp:Label></td>
                    <td colspan="4"><asp:TextBox ID="name_box" runat="server" Width="471px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="Address: "></asp:Label></td>
                    <td colspan="3"><asp:TextBox ID="address_box" runat="server" TextMode="MultiLine" Width="480px"></asp:TextBox></td>
                    <td></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label3" runat="server" Text="Date of Birth: "></asp:Label></td>
                    <td rowspan="3" colspan="2"><asp:Calendar ID="dob_input" runat="server" Height="239px" Width="404px"></asp:Calendar></td>
                    <td><asp:Label ID="Label4" runat="server" Text="Gender: "></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="gender_input" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Label ID="Label5" runat="server" Text="Civil Status:"></asp:Label></td>
                    <td class="auto-style11">
                        <asp:DropDownList ID="cvstat" runat="server">
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
                    <td><asp:Image ID="clientImage" runat="server" Height="149px" Width="149px" /></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td colspan="2"><asp:FileUpload ID="uploadedFile" runat="server" Width="333px" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2"></td>
                    <td colspan="2">
                        <asp:Button ID="upldbtn" runat="server" Text="Upload" OnClick="upldbtn_Click1" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><asp:Button ID="insertbtn" CssClass="btn-outline-dark" runat="server" Text="Insert" Width="193px" OnClick="insertbtn_Click1" /></td>
                    <td><asp:Button ID="back" CssClass="btn-outline-dark" runat="server" Text="Back To Menu" Width="167px" OnClick="back_Click1" /></td>
                    <td colspan="2">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>
</html>
