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
    DataTable dt2 = new DataTable();
    DataTable dt3 = new DataTable();
    DataTable dt4 = new DataTable();
     DataTable dt5 = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cmd.Connection = con;
            cmd.CommandText = "select * from prescriptiontb where hid=" + Request.QueryString["id"].ToString();
            da.SelectCommand = cmd;
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                DetailsView1.DataSource = dt;
                DetailsView1.DataBind();
                Label5.Text = dt.Rows[0][1].ToString();
                Label6.Text = dt.Rows[0][0].ToString();
            }
            cmd.Connection = con;
            cmd.CommandText = "select * from medicinetable";
            da.SelectCommand = cmd;
            da.Fill(dt1);
            if (dt1.Rows.Count > 0)
            {
                DropDownList1.DataSource = dt1;
                DropDownList1.DataBind();


            }
        }
    }
    void bind()
    {
        cmd.Connection = con;
        cmd.CommandText = "select * from calculatortb where hid=" + Request.QueryString["id"].ToString();
        da.SelectCommand = cmd;
        da.Fill(dt3);
        if (dt3.Rows.Count > 0)
        {
            GridView1.DataSource = dt3;
            GridView1.DataBind();
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        cmd.Connection = con;
        cmd.CommandText = "select * from medicinetable where mid="+DropDownList1.SelectedValue;
        da.SelectCommand = cmd;
        da.Fill(dt2);
        if (dt2.Rows.Count > 0)
        {
            Label3.Text = dt2.Rows[0][5].ToString();
            Label7.Text = dt2.Rows[0][2].ToString();
            Label8.Text = dt2.Rows[0][7].ToString();
            Label9.Text = dt2.Rows[0][6].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd.Connection = con;
        cmd.CommandText = "select * from medicinetable where mid=" + DropDownList1.SelectedValue;
        da.SelectCommand = cmd;
        da.Fill(dt4);
        int qty = Convert.ToInt32(TextBox1.Text);
        int stock=Convert.ToInt32(dt4.Rows[0][5].ToString());
        if (qty > stock)
        {
            Response.Write("<script type=\"text/javascript\">alert('out of stock');</script>");
        }
        else
        {

            float total = Convert.ToInt32(TextBox1.Text) * Convert.ToInt32(Label9.Text);
            cmd.Connection = con;
            cmd.CommandText = "insert into calculatortb values(" + Label6.Text + "," + Label5.Text + "," + DropDownList1.SelectedValue + ",'" + DropDownList1.SelectedItem.Text + "','" + Label7.Text + "'," + Label9.Text + "," + Label8.Text + "," + TextBox1.Text + "," + total + ",'"+DateTime.Now.ToShortDateString()+"')";
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            int newstock = Convert.ToInt32(Label3.Text) -Convert.ToInt32(TextBox1.Text);
            cmd.Connection = con;
            cmd.CommandText = "update medicinetable set availablestock="+newstock+" where mid="+DropDownList1.SelectedValue+"";
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            bind();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        cmd.Connection = con;
        cmd.CommandText = "select * from calculatortb where hid=" + Request.QueryString["id"].ToString();
        da.SelectCommand = cmd;
        da.Fill(dt5);
        if (dt5.Rows.Count > 0)
        {
            float gtotal = 0;
            for (int i = 0; i < dt5.Rows.Count; i++)
            {
                
               gtotal = gtotal + float.Parse(dt5.Rows[i][9].ToString());
            }
            Label14.Text = gtotal.ToString();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
       
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        cmd.Connection = con;
        cmd.CommandText = "delete from calculatortb where billid=" + e.CommandArgument.ToString()+"";
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        bind();
    }
}