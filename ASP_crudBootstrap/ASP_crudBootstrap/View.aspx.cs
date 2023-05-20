using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace ASP_crudBootstrap
{
    public partial class View : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Database in_db = new Database("127.0.0.1", "root", "simpledatabase");
            in_db.OpenDatabase();
            MySqlDataReader datareader = in_db.getAll();
            if (datareader.HasRows)
            {
                datareader.Close();
                MySqlDataAdapter dataAdapter = new MySqlDataAdapter("select * from simpledb", in_db.GetConnection());
                DataTable dataTable = new DataTable();
                dataAdapter.Fill(dataTable);

                TableRow dataRow = new TableRow();
                viewtable.GridLines = GridLines.Both;
                dataRow.BackColor = System.Drawing.Color.Coral;
                TableCell cellname = new TableCell();
                cellname.Width = 300;
                TableCell celladdress = new TableCell();
                celladdress.Width = 600;
                TableCell cellgender = new TableCell();
                cellgender.Width = 300;
                TableCell cellcivil = new TableCell();
                cellcivil.Width = 300;
                TableCell cellbirth = new TableCell();
                cellbirth.Width = 300;

                cellname.Text = "Name";
                celladdress.Text = "Address";
                cellgender.Text = "Gender";
                cellcivil.Text = "Civil Status";
                cellbirth.Text = "Date of Birth";

                dataRow.Cells.Add(cellname);
                dataRow.Cells.Add(celladdress);
                dataRow.Cells.Add(cellgender);
                dataRow.Cells.Add(cellcivil);
                dataRow.Cells.Add(cellbirth);

                viewtable.Rows.Add(dataRow);

                foreach (DataRow access in dataTable.Rows)
                {
                    dataRow = new TableRow();
                    cellname = new TableCell();
                    celladdress = new TableCell();
                    cellgender = new TableCell();
                    cellcivil = new TableCell();
                    cellbirth = new TableCell();

                    cellname.Text = access["name"].ToString();
                    celladdress.Text = access["address"].ToString();
                    cellgender.Text = access["gender"].ToString();
                    cellcivil.Text = access["civilstat"].ToString();
                    DateTime bday = Convert.ToDateTime(access["dob"].ToString());
                    cellbirth.Text = bday.ToShortDateString();

                    dataRow.Cells.Add(cellname);
                    dataRow.Cells.Add(celladdress);
                    dataRow.Cells.Add(cellgender);
                    dataRow.Cells.Add(cellcivil);
                    dataRow.Cells.Add(cellbirth);

                    viewtable.Rows.Add(dataRow);
                }
            }
            
        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("menu.aspx");
        }
    }
}