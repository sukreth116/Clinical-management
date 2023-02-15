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
    DataTable dt1 = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd.Connection = con;
        cmd.CommandText = "select username from logintb where username='" + TextBox9.Text + "'";
        da.SelectCommand = cmd;
        da.Fill(dt1);
        if (dt1.Rows.Count > 0)
        {
            Response.Write("<script type=\"text/JavaScript\">alert('username already exist,Pls change');</script>");
        }
        else
        {
            cmd.Connection = con;
            cmd.CommandText = "insert into stafftb values('" + TextBox1.Text + "'," + TextBox2.Text + ",'" + TextBox3.Text + "'," + TextBox4.Text + ",'" + Label13.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + RadioButtonList2.SelectedItem.Text + "')";
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            cmd.Connection = con;
            cmd.CommandText = "select max(sid) from stafftb";
            da.SelectCommand = cmd;
            da.Fill(dt);
            cmd.Connection = con;
            cmd.CommandText = "insert into logintb values(" + dt.Rows[0][0] + ",'','" + TextBox9.Text + "','" + TextBox10.Text + "','staff')";
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script type=\"text/javascript\">alert('done');</script>");
        }

    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Label13.Text = Calendar1.SelectedDate.ToShortDateString();
    }
}