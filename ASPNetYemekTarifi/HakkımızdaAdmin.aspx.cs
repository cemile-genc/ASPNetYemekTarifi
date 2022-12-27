using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ASPNetYemekTarifi
{
    public partial class HakkımızdaAdmin : System.Web.UI.Page
    {
        SqlClass con=new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            if (Page.IsPostBack == false)
            {


                SqlCommand command = new SqlCommand("select * from tbl_hakkimizda", con.connection());
                SqlDataReader read = command.ExecuteReader();
                while (read.Read())
                {
                    TextBox1.Text = read[0].ToString();
                }
                con.connection().Close();
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("Update tbl_hakkimizda set Metin=@p1",con.connection());
            command.Parameters.AddWithValue("@p1", TextBox1.Text);
            command.ExecuteNonQuery();
            con.connection().Close();
        }
    }
}