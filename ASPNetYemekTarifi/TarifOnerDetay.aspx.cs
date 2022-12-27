using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace ASPNetYemekTarifi
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        SqlClass con = new SqlClass();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["Tarifid"];
                SqlCommand command = new SqlCommand("Select * from tbl_tarifler where tarifid=@p1", con.connection());
                command.Parameters.AddWithValue("@p1", id);
                SqlDataReader read = command.ExecuteReader();
                while (read.Read())
                {
                    TextBox1.Text = read[1].ToString();
                    TextBox2.Text = read[2].ToString();
                    TextBox3.Text = read[3].ToString();
                    TextBox4.Text = read[5].ToString();
                    TextBox5.Text = read[6].ToString();
                }
                con.connection().Close();

                //Kategori Listesi
                SqlCommand command1 = new SqlCommand("Select * from Tbl_Kategoriler", con.connection());
                SqlDataReader reader1 = command1.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = reader1;
                DropDownList1.DataBind();

            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("update tbl_tarifler set tarifdurum=1 where tarifid=1", con.connection());
            command.Parameters.AddWithValue("@p1", id);
            command.ExecuteNonQuery();
            con.connection().Close();

            //yemeği anasayfaya ekleme
            SqlCommand command1 = new SqlCommand("insert into tbl_yemekler (yemekadı,yemekmalzeme,yemektarif,kategoriid) values(@p1,@p2,@p3,@p4)",con.connection());
            command1.Parameters.AddWithValue("@p1", TextBox1.Text);
            command1.Parameters.AddWithValue("@p2", TextBox2.Text);
            command1.Parameters.AddWithValue("@p3", TextBox3.Text);
            command1.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            command1.ExecuteNonQuery();
            con.connection().Close();

        }
    }
}