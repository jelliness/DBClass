<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="ASP_crudBootstrap.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous"/>
</head>
<body>
    <form id="form1" runat="server">
         <div class="container col-2 my-auto">
             <asp:Label ID="menu_title" CssClass="display-3 justify-content-center font-weight-bold text-danger" runat="server" Text="MENU"></asp:Label>
         </div>
        <div class="container col-3 my-auto">
            <div class="d-flex flex-column m-5">
                <div class="p-2"><asp:Button ID="add_info" runat="server" CssClass="btn-outline-dark btn-block " Text="Add New Information" OnClick="add_info_Click1" /></div>
                <div class="p-2"><asp:Button ID="updt_info" runat="server" CssClass="btn-outline-dark btn-block " Text="Modify Existing Information" OnClick="updt_info_Click1"/></div>
                <div class="p-2"><asp:Button ID="view_info" runat="server" CssClass="btn-outline-dark btn-block " Text="View All Information" OnClick="view_info_Click" /></div>
            </div>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>
</html>
