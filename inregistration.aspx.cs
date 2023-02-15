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
    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd.Connection = con;
        cmd.CommandText = "select username from logintb where username='" + TextBox5.Text + "'";
        da.SelectCommand = cmd;
        da.Fill(dt1);
        if (dt1.Rows.Count > 0)
        {
            Response.Write("<script type=\"text/JavaScript\">alert('username already exist,Pls change');</script>");
        }
        else
        {
            cmd.Connection = con;
            cmd.CommandText = "insert into registertable values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "'," + TextBox4.Text + ",'" + RadioButtonList1.SelectedItem.Text + "'," + TextBox7.Text + ")";
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            cmd.Connection = con;
            cmd.CommandText = "select max(pid) from registertable";
            da.SelectCommand = cmd;
            da.Fill(dt);
            cmd.Connection = con;
            cmd.CommandText = "insert into logintb values('0'," + dt.Rows[0][0] + ",'" + TextBox5.Text + "','" + TextBox6.Text + "','patient')";
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script type=\"text/javascript\">alert('done');</sript>");
        }


    }
}