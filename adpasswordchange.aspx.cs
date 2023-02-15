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
        cmd.Connection = con;
        cmd.CommandText = "select * from logintb where lid=" + Session["lid"].ToString() + "";
        da.SelectCommand = cmd;
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Label2.Text = dt.Rows[0][3].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd.Connection = con;
        cmd.CommandText = "update  logintb set password='" + TextBox2.Text + "' where lid=" + Session["lid"].ToString();
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("inlogin.aspx");
    }
}