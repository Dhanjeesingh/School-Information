using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;



public partial class exam_result : System.Web.UI.Page
{
    SqlConnection conn; 
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Student.mdf;Integrated Security=True");
        if (conn.State == ConnectionState.Open)
        {
            conn.Close();
        }
        conn.Open();
        if (!Page.IsPostBack == true)
        {

            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from exam";
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList1.Items.Add(dr.GetValue(0).ToString());
            }
            conn.Close();
            conn.Open();
            cmd.CommandText = "select * from student";
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList2.Items.Add(dr.GetValue(0).ToString());
            }
            conn.Close();
            conn.Open();
            cmd.CommandText = "select * from course";
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList2.Items.Add(dr.GetValue(0).ToString());
            }
            conn.Close();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
        TextBox11.Text = "";
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //Save The Record
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "Insert into exam_result values('" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "')";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Save')</script>");
            SqlDataSource1.SelectCommand = "select * from exam_result";
            GridView1.DataSourceID = "SqlDataSource1";
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //Record Update
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "Update exam_result set student_id='" + TextBox9.Text + "',course_id='" + TextBox10.Text + "',marks='" + TextBox11.Text + "'where exam_id='" + TextBox8.Text + "'";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record update')</script>");
            SqlDataSource1.SelectCommand = "select * from exam_result";
            GridView1.DataSourceID = "SqlDataSource1";
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
   
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        //Record Delete
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "Delete from exam_result where exam_id='" + TextBox8.Text + "'";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Delete')</script>");
            SqlDataSource1.SelectCommand = "select * from exam_result";
            GridView1.DataSourceID = "SqlDataSource1";
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        //All Search
        SqlDataSource1.SelectCommand = "select * from exam_result";
        GridView1.DataSourceID = "SqlDataSource1";
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        //P seacrch
        SqlDataSource1.SelectCommand = "select * from exam_result where exam_id='" + TextBox8.Text + "'";
        GridView1.DataSourceID = "SqlDataSource1";
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox8.Text = DropDownList1.SelectedValue.ToString();

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox9.Text = DropDownList2.SelectedValue.ToString();

    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox10.Text = DropDownList3.SelectedValue.ToString();

    }

   
}