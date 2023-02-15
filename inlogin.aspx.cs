using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\logintb.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        cmd.Connection = con;
        cmd.CommandText = "select * from logintb where username='" + TextBox2.Text + "'and password='" + TextBox3.Text + "'";
        da.SelectCommand = cmd;
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            if (dt.Rows[0][5].ToString() == "admin")

            {
                Session["lid"] = dt.Rows[0][0].ToString();
                Response.Redirect("adhome.aspx");
            }
            else if (dt.Rows[0][5].ToString() == "patient")
            {
                Session["pid"] = dt.Rows[0][2].ToString();
                Response.Redirect("pthome.aspx");

            }
            else
            {
                Session["sid"] = dt.Rows[0][1].ToString();
                Response.Redirect("phhome.aspx");


            }
        }

        else
        {
            Response.Write("<script type=\"text/javascript\">alert('Error');<script>");
        }
        

    }
}
