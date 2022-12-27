using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace ASPNetYemekTarifi
{
    public partial class YorumEdit : System.Web.UI.Page
    {
        SqlClass con = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false) //sayfayı bi kere yükle. 
            {
                int id = Convert.ToInt32(Request.QueryString["Yemekid"]);
                SqlCommand command = new SqlCommand("Select * from Tbl_Yemekler where Yemekid=@p1 ", con.connection());
                command.Parameters.AddWithValue("@p1", id);
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    TextBox1.Text = reader[1].ToString();
                    TextBox2.Text = reader[2].ToString();
                    TextBox3.Text = reader[3].ToString();
                }
                con.connection().Close();


            }

        }

       
    }
}