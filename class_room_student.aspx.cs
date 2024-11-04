using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class class_room_student : System.Web.UI.Page
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
            cmd.CommandText = "select * from Classroom";
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
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //Save The Record
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "Insert into class_room_student values('" + TextBox1.Text + "','" + TextBox2.Text + "')";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Save')</script>");
            SqlDataSource1.SelectCommand = "select * from class_room_student";
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
        
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        //Record Update
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "Update class_room_student set student_id='" + TextBox2.Text + "' where classroom_id='" + TextBox1.Text + "'";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record update')</script>");
            SqlDataSource1.SelectCommand = "select * from class_room_student";
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
            cmd.CommandText = "Delete from class_room_student where classroom_id='" + TextBox1.Text + "'";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Delete')</script>");
            SqlDataSource1.SelectCommand = "select * from class_room_student";
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
        SqlDataSource1.SelectCommand = "select * from class_room_student";
        GridView1.DataSourceID = "SqlDataSource1";
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        //P seacrch
        SqlDataSource1.SelectCommand = "select * from class_room_student where classroom_id='" + TextBox1.Text + "'";
        GridView1.DataSourceID = "SqlDataSource1";

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = DropDownList1.SelectedValue.ToString();

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox2.Text = DropDownList2.SelectedValue.ToString();

    }
}