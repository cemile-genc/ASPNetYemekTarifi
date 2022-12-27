using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNetYemekTarifi
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        SqlClass con = new SqlClass();
        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
                id = Request.QueryString["Kategoriid"];
                islem = Request.QueryString["islem"];
            }
            SqlCommand command= new SqlCommand("select * from Tbl_Kategoriler", con.connection());
            SqlDataReader reader = command.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();
            //Bu işlem çok tercih edilmez ilişkili tablolarda hataya sebep olur.
            if (islem == "sil")
            {
                SqlCommand cmddelete = new SqlCommand("Delete  from Tbl_Kategoriler where kategoriid=@p1",con.connection());
                cmddelete.Parameters.AddWithValue("@p1", id);
                cmddelete.ExecuteNonQuery();
                con.connection().Close();
            }
            Panel2.Visible = false; //panel ilk açılışta kapalı olacak.
            Panel5.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel5.Visible = true;

        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel5.Visible = false;

        }
        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("insert into tbl_Kategoriler (KategoriAd) values (@p1)", con.connection());
            command.Parameters.AddWithValue("@p1", TextBox1.Text);
            command.ExecuteNonQuery();
            con.connection().Close();
        }
    }
}