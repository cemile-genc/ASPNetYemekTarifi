using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNetYemekTarifi
{
    public partial class Yemekler : System.Web.UI.Page
    {
        SqlClass con = new SqlClass();
        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false; //panel ilk açılışta kapalı olacak.
            Panel5.Visible = false;
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
            //Yemek Listesi
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["Yemekid"];
                islem = Request.QueryString["islem"];
            }
            SqlCommand command = new SqlCommand("select * from Tbl_Yemekler", con.connection());
            SqlDataReader reader = command.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();



            //Bu işlem çok tercih edilmez ilişkili tablolarda hataya sebep olur.
            if (islem == "sil")
            {
                SqlCommand cmddelete = new SqlCommand("delete from Tbl_Yemekler where yemekid=@p1", con.connection());
                cmddelete.Parameters.AddWithValue("@p1", id);
                cmddelete.ExecuteNonQuery();
                con.connection().Close();
            }
         
        }
 

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Panel5.Visible = true;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Panel5.Visible = false;
        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {

            //Yemek Ekleme
            SqlCommand command = new SqlCommand("insert into Tbl_Yemekler (YemekAdı, YemekMalzeme, YemekTarif, YemekResim) values (@p1, @p2, @p3, @p4)", con.connection());
            command.Parameters.AddWithValue("@p1", TextBox1.Text);
            command.Parameters.AddWithValue("@p2", TextBox2.Text);
            command.Parameters.AddWithValue("@p3", TextBox3.Text);
            command.Parameters.AddWithValue("@p4", TextBox4.Text);
            command.ExecuteNonQuery();
            con.connection().Close();

            //Kategori Sayısını Arttırma
            SqlCommand command1 = new SqlCommand("update  Tbl_Kategoriler set kategoriadet=kategoriadet+1 where kategoriid=@p1 ", con.connection());
            command1.Parameters.AddWithValue("@p1",DropDownList1.SelectedValue);
            command.ExecuteNonQuery();
            con.connection().Close();

        }
    }
}