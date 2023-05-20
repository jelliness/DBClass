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
    public partial class Modify : System.Web.UI.Page
    {
        public string Oldname;
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }


        protected void upldbtn_Click(object sender, EventArgs e)
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

        protected void savebtn_Click1(object sender, EventArgs e)
        {
            Database in_db = new Database("127.0.0.1", "root", "simpledatabase");
            in_db.OpenDatabase();
            string bday = dob_input.SelectedDate.ToString();
            DateTime convertDate = DateTime.Parse(bday);
            string newdob = convertDate.ToString("yyyy/MM/dd");

            in_db.Edit(name_box.Text, address_box.Text, newdob, gender_input.SelectedValue, cvstat.SelectedValue, clientImage.ImageUrl);
            in_db.CloseDatabase();
            Response.Write("<script>alert('Successfully updated " + name_box.Text + "! ')</script>");
            clientImage.ImageUrl = "~/images/default.png";
            Session["picturename"] = "default.png";
            name_box.Text = "";
            address_box.Text = "";
            gender_input.ClearSelection();
            cvstat.ClearSelection();

            savebtn.Visible = false;
            savebtn.Enabled = false;

            bday_text.Visible = false;
            address_box.Enabled = false;
            gender_input.Enabled = false;
            cvstat.Enabled = false;
            upldbtn.Visible = false;
            uploadedFile.Visible = false;
            dob_input.Enabled = false;

            edit_info.Enabled = false;
            del_info.Enabled = false;
        }

        protected void edit_info_Click1(object sender, EventArgs e)
        {
            savebtn.Visible = true;
            savebtn.Enabled = true;
            del_info.Enabled = false;
            bday_text.Visible = false;
            address_box.Enabled = true;
            gender_input.Enabled = true;
            cvstat.Enabled = true;
            upldbtn.Visible = true;
            uploadedFile.Visible = true;
            dob_input.Enabled = true;
        }

        protected void del_info_Click1(object sender, EventArgs e)
        {
            Database in_db = new Database("127.0.0.1", "root", "simpledatabase");
            in_db.OpenDatabase();
            in_db.Delete(name_box.Text);
            in_db.CloseDatabase();
            Response.Write("<script>alert('Successfully Deleted! ')</script>");
            clientImage.ImageUrl = "~/images/default.png";
            Session["picturename"] = "default.png";
            name_box.Text = "";
            address_box.Text = "";
            bday_text.Text = "";
            gender_input.ClearSelection();
            cvstat.ClearSelection();
            edit_info.Enabled = false;
            del_info.Enabled = false;
        }

        protected void back_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void search_btn_Click1(object sender, EventArgs e)
        {
            savebtn.Visible = false;
            savebtn.Enabled = false;
            bday_text.Visible = true;
            address_box.Enabled = false;
            gender_input.Enabled = false;
            cvstat.Enabled = false;
            upldbtn.Visible = false;
            uploadedFile.Visible = false;
            dob_input.Enabled = false;
            Database in_db = new Database("127.0.0.1", "root", "simpledatabase");
            in_db.OpenDatabase();
            Oldname = name_box.Text;
            MySqlDataReader datalist = in_db.Search(name_box.Text);
            if (datalist.HasRows)
            {
                datalist.Read();
                address_box.Text = datalist["address"].ToString();
                string bday = datalist["dob"].ToString();
                DateTime convertDate = DateTime.Parse(bday);
                dob_input.SelectedDate = DateTime.Parse(bday);
                bday_text.Text = convertDate.ToShortDateString();
                try
                {
                    gender_input.SelectedValue = datalist["gender"].ToString();
                }
                catch (ArgumentOutOfRangeException)
                {
                    gender_input.Enabled =false;
                }
                cvstat.SelectedValue = datalist["civilstat"].ToString();
                clientImage.ImageUrl = datalist["filename"].ToString();
                Session["picturename"] = datalist["filename"].ToString();
                edit_info.Enabled = true;
                del_info.Enabled = true;
            }
            else
            {
                Response.Write("<script>alert(' "+ name_box.Text + " not Found!')</script>");
            }
            in_db.CloseDatabase();
        }
    }
}
