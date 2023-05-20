using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_crudBootstrap
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }


        protected void view_info_Click(object sender, EventArgs e)
        {
            Response.Redirect("View.aspx");
        }

        protected void updt_info_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Modify.aspx");
        }

        protected void add_info_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Add.aspx");
        }
    }
}