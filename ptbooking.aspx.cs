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
        cmd.CommandText = "select * from bookingtb where pid="+Session["pid"].ToString()+" and date='"+Label2.Text+"'";
        da.SelectCommand = cmd;
        da.Fill(dt1);
        if (dt1.Rows.Count > 0)
        {
            Label3.Text = "You are already booked in this date";
        }

        else
        {
            int token;
            cmd.Connection = con;
            cmd.CommandText = "select max(token) from bookingtb where date='" + Label2.Text + "'";
            da.SelectCommand = cmd;
            da.Fill(dt);
            if (dt.Rows[0][0].ToString() == "")
            {
                token = 0;

            }
            else
            {
                token = Convert.ToInt32(dt.Rows[0][0].ToString());
                if (token > 30)
                {

                    Label3.Text = "No token available for this date";
                    Response.Redirect("pthome.aspx");
                }
                else
                {
                    int newtoken = Convert.ToInt32(dt.Rows[0][0].ToString()) + 1;
                    cmd.Connection = con;
                    cmd.CommandText = "insert into bookingtb values('" + Session["pid"].ToString() + "','" + Label2.Text + "'," + newtoken + ",'booked')";
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("Success");
                    Label3.Text = "Successfully booked";
                    Response.Write("<script type=\"text/javascript\">alert('Pls note your token number:" + newtoken + "');</script>");
                    Response.Redirect("pthome.aspx");
                }

            }
            if (token == 0)
            {
                int newtoken1 = token + 1;
                cmd.Connection = con;
                cmd.CommandText = "insert into bookingtb values('" + Session["pid"].ToString() + "','" + Label2.Text + "'," + newtoken1 + ",'booked')";
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Label3.Text = "Successfully booked";
                Response.Write("<script type=\"text/javascript\">alert('Pls note your token number:" + newtoken1 + "');</script>");
            }
        }
       
        
       


    }
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        DateTime pastday = e.Day.Date;
        DateTime date = DateTime.Now;
        int year = date.Year;
        int month = date.Month;
        int day = date.Day;
        DateTime today = new DateTime(year, month, day);
        DateTime tommorow = new DateTime(year, month, day + 1);

        if (pastday.CompareTo(today) < 0)
        {
            e.Cell.BackColor = System.Drawing.Color.Gray;
            e.Day.IsSelectable = false;
        }
        if (e.Day.Date > tommorow)
        {
            e.Cell.BackColor = System.Drawing.Color.Gray;
            e.Day.IsSelectable = false;
        }
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Label2.Text = Calendar1.SelectedDate.ToShortDateString();
    }
}