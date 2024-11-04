using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class student : System.Web.UI.Page
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
            cmd.CommandText = "select * from student";
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList1.Items.Add(dr.GetValue(0).ToString());
            }

        }
        conn.Close();


    }
    protected void Button6_Click(object sender, EventArgs e)
    {
          //Palticular seacrch
        try
        {
            conn.Close();
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from student where student_id='" + TextBox1.Text + "'";
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList1.Items.Add(dr.GetValue(0).ToString());
                TextBox2.Text = dr.GetValue(1).ToString();
                TextBox3.Text = dr.GetValue(2).ToString();
                TextBox4.Text = dr.GetValue(3).ToString();
                TextBox5.Text = dr.GetValue(4).ToString();
                TextBox6.Text = dr.GetValue(5).ToString();
                TextBox7.Text = dr.GetValue(6).ToString();
                TextBox8.Text = dr.GetValue(7).ToString();
                TextBox9.Text = dr.GetValue(8).ToString();




            }

        SqlDataSource1.SelectCommand = "select * from student where student_id='" + TextBox1.Text + "'";
        GridView1.DataSourceID = "SqlDataSource1";
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
 

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";

       
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //Save The Record
        try
        {
            conn.Close();
            conn.Open();
           
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "Insert into student values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "')";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Save')</script>");
            SqlDataSource1.SelectCommand = "select * from student";
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
            cmd.CommandText = "Update student set fname='" + TextBox2.Text + "',lname='" + TextBox3.Text + "',dob='" + TextBox4.Text + "',phone='" + TextBox5.Text + "',mobile='" + TextBox6.Text + "',parent_id='" + TextBox7.Text + "',date_of_join='" + TextBox8.Text + "',status='" + TextBox9.Text + "'where student_id='" + TextBox1.Text + "'";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record update')</script>");
            SqlDataSource1.SelectCommand = "select * from student";
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
            cmd.CommandText = "Delete from student where student_id='" + TextBox1.Text + "'";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Delete')</script>");
            SqlDataSource1.SelectCommand = "select * from student";
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
        SqlDataSource1.SelectCommand = "select * from student";
        GridView1.DataSourceID = "SqlDataSource1";
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = DropDownList1.SelectedValue.ToString();
    }
}