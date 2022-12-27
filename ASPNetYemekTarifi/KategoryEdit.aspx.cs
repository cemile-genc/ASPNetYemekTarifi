using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Runtime.Remoting.Messaging;

namespace ASPNetYemekTarifi
{
    public partial class KategoryEdit: System.Web.UI.Page
    {
        SqlClass con = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack == false) //sayfayı bi kere yükle. 
            {
                int id = Convert.ToInt32(Request.QueryString["Kategoriid"]);
                SqlCommand command = new SqlCommand("Select * from Tbl_Kategoriler where Kategoriid=@p1", con.connection());
                command.Parameters.AddWithValue("@p1", id);
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    TextBox1.Text = reader[1].ToString();
                    TextBox2.Text = reader[2].ToString();
                    
                }
                con.connection().Close();

            }
     
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Kategoriid"]);
            SqlCommand cmd = new SqlCommand("Update Tbl_Kategoriler set kategoriad=@p1,kategoriadet=@p2 where kategoriid=@p3", con.connection());
            cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@p3", (id > 0 ? id : 0));
            cmd.ExecuteNonQuery();
            Response.Write("Düzenlemeniz Kaydedilmiştir!");
            con.connection().Close();
            //SqlCommand command = new SqlCommand("update tbl_kategoriler set kategoriad=@p1 , kategoriadet= @p2 where kategoriid=@p3", con.connection());
            //command.Parameters.AddWithValue("@p1", TextBox1.Text);
            //command.Parameters.AddWithValue("@p2", TextBox2.Text);
            //command.Parameters.AddWithValue("@p3", id);
            //command.ExecuteNonQuery();
            //con.connection().Close();
        }
    }


}