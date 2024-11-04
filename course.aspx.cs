using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class course : System.Web.UI.Page
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
            cmd.CommandText = "select * from grade";
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList1.Items.Add(dr.GetValue(0).ToString());
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
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //Save The Record
        try
        {
            conn.Close();
            conn.Open();
            
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "Insert into course values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Save')</script>");
            SqlDataSource1.SelectCommand = "select * from course";
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
            conn.Close();
            conn.Open();
            
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "Update course set name='" + TextBox2.Text + "',desc1='" + TextBox3.Text + "',grade_id='" + TextBox4.Text + "'where course_id='" + TextBox1.Text + "'";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record update')</script>");
            SqlDataSource1.SelectCommand = "select * from course";
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
            conn.Close();
            conn.Open();
            
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "Delete from course where course_id='" + TextBox1.Text + "'";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Delete')</script>");
            SqlDataSource1.SelectCommand = "select * from course";
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
        SqlDataSource1.SelectCommand = "select * from course";
        GridView1.DataSourceID = "SqlDataSource1";
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
      
         //Palticular seacrch
        try
        {
            conn.Close();
            conn.Open();
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select * from course where course_id='" + TextBox1.Text + "'";
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    DropDownList1.Items.Add(dr.GetValue(0).ToString());
                    TextBox2.Text = dr.GetValue(1).ToString();
                    TextBox3.Text = dr.GetValue(2).ToString();
                    TextBox4.Text = dr.GetValue(3).ToString();
                                 }
       
        SqlDataSource1.SelectCommand = "select * from course where course_id='" + TextBox1.Text + "'";
        GridView1.DataSourceID = "SqlDataSource1";
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox4.Text = DropDownList1.SelectedValue.ToString();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = DropDownList2.SelectedValue.ToString();
    }
}