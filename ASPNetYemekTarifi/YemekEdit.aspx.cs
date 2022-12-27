using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ASPNetYemekTarifi
{
    public partial class YemekEdit : System.Web.UI.Page
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
                    DropDownList1.Text = reader[7].ToString();
                }
                con.connection().Close();


                if (Page.IsPostBack == false)
                {
                    //Kategori Listesi
                    SqlCommand command1 = new SqlCommand("Select * from Tbl_Kategoriler", con.connection());
                    SqlDataReader reader1 = command1.ExecuteReader();

                    DropDownList1.DataTextField = "KategoriAd";
                    DropDownList1.DataValueField = "Kategoriid";

                    DropDownList1.DataSource = reader1;
                    DropDownList1.DataBind();


                }

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Yemekid"]);
            SqlCommand cmd = new SqlCommand("Update Tbl_Yemekler set yemekadı=@p1,yemekmalzeme=@p2,yemektarif=@p3, kategoriid=@p4 where yemekid=@p5", con.connection());
            cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@p3", TextBox3.Text);
            cmd.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@p5", (id > 0 ? id : 0));
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Yemekid"]);

            //burada tüm yemeklerin durumunu false yapmış oldum 
            SqlCommand command = new SqlCommand("update tbl_yemekler set durum=0",con.connection());
            command.ExecuteNonQuery();
            con.connection().Close();

            //burada ise id'e göre true yapıp günün yemeğini belirledim.
            SqlCommand command1 = new SqlCommand("update tbl_yemekler set durum=1 where yemekid=@p1",con.connection());
            command1.Parameters.AddWithValue("@p1",id);
            command1.ExecuteNonQuery();
            con.connection().Close();
        }
    }
}