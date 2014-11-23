using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.ServiceModel.Channels;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Depa : System.Web.UI.Page
{
    SqlConnection connection = new SqlConnection(@"Data Source=.;Initial Catalog=School;Integrated Security=True");
    SqlDataReader rdr = null;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        //connection.ConnectionString = @"Data Source=.;Initial Catalog=School;Integrated Security=True";

        Refresh();

    }

    private void Refresh()
    {
        connection.Open();
        cmd = new SqlCommand("Select * From Depertment", connection);
        rdr = cmd.ExecuteReader();
        GridView1.DataSource = rdr;
        GridView1.DataBind();
        connection.Close();
    }

    //void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    //{
    //    if (e.Row.RowType == DataControlRowType.Header)
    //    {
    //        e.Row.Cells[0].Text = "Name";
    //        e.Row.Cells[1].Text = "City";
    //    }
    //}

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        connection.Open();
        int aa = Convert.ToInt32(TextBox1.Text);
        string bb = TextBox2.Text;
        
        cmd = new SqlCommand("INSERT INTO Depertment(dId, dName)VALUES ('" + aa + "','" + bb + "')", connection);
        cmd.ExecuteNonQuery();
        
        connection.Close();

        Refresh();
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        connection.Open();
        int aa = Convert.ToInt32(TextBox1.Text);
        
        string abc = "SELECT dName FROM Depertment where dId='" + aa + "'";
        cmd = new SqlCommand(abc, connection);
        
        rdr = cmd.ExecuteReader();
        DataTable dt = new DataTable();
        
        dt.Load(rdr);
        GridView1.DataSource = dt;
        connection.Close();
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        connection.Open();
        int aa = Convert.ToInt32(TextBox1.Text);
        string bb = TextBox2.Text;

        string abc = "UPDATE Depertment SET dId ='" + aa + "', dName ='" + bb + "' WHERE dId = '" + aa + "'";
        cmd = new SqlCommand(abc,connection);
        cmd.ExecuteNonQuery();
        
        connection.Close();
        Refresh();
        
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        connection.Open();
        int aa = Convert.ToInt32(TextBox1.Text);
        cmd = new SqlCommand("DELETE FROM Depertment where dId='" + aa + "'", connection);
        cmd.ExecuteNonQuery();
        
        connection.Close();
        Refresh();
    }
}