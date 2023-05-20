using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;


namespace ASP_crudBootstrap
{
    public partial class Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
        protected void Page_Init(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Session["picturename"] = "default.png";
                clientImage.ImageUrl = "~/images/default.png";
            }
        }

        protected void insertbtn_Click1(object sender, EventArgs e)
        {
            Database in_db = new Database("127.0.0.1", "root", "simpledatabase");
            in_db.OpenDatabase();
            in_db.Insert(name_box.Text, address_box.Text, dob_input.SelectedDate, gender_input.SelectedValue, cvstat.SelectedValue, clientImage.ImageUrl);
            in_db.CloseDatabase();

            Response.Write("<script>alert('Successfully added " + name_box.Text + "! ')</script>");
            clientImage.ImageUrl = "~/images/default.png";
            Session["picturename"] = "default.png";
            name_box.Text = "";
            address_box.Text = "";
            gender_input.ClearSelection();
            cvstat.ClearSelection();
        }

        protected void back_Click1(object sender, EventArgs e)
        {
            Response.Redirect("menu.aspx");
        }

        protected void upldbtn_Click1(object sender, EventArgs e)
        {
            string path = Server.MapPath("~/images/");
            if (uploadedFile.HasFile)
            {
                uploadedFile.SaveAs(path + Path.GetFileName(uploadedFile.FileName));
                clientImage.ImageUrl = "~/images/" + Path.GetFileName(uploadedFile.FileName);

            }
            else
            {
                clientImage.ImageUrl = "~/images/default.png";
            }
        }
    }
}