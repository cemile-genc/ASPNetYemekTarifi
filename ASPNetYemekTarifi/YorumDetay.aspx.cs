using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Reflection.Emit;

namespace ASPNetYemekTarifi
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        SqlClass con = new SqlClass();
        string id = ""; //Değişkenin ilk değeri null
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yorumid"];
            if (Page.IsPostBack == false)
            {
                SqlCommand command = new SqlCommand("Select Yorumadsoyad,yorummail,Yorumİcerik,yemekadı from tbl_Yorumlar inner join tbl_yemekler on tbl_yorumlar.yemekid=tbl_yemekler.yemekid  where Yorumid=@p1", con.connection());
                command.Parameters.AddWithValue("@p1", Convert.ToInt32(id));
                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {
                    TxtAdSoyad.Text = dr[0].ToString();
                    TxtMail.Text = dr[1].ToString();
                    Txtİcerik.Text = dr[2].ToString();
                    TxtYemek.Text = dr[3].ToString();

                }
                con.connection().Close();
            }
        }

        protected void BtnOnayla_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("Update Tbl_Yorumlar set Yorumİcerik=@p1, YorumOnay=@p2 where YorumId=@p3",con.connection());
            command.Parameters.AddWithValue("@p1", Txtİcerik.Text);
            command.Parameters.AddWithValue("@p2", "True");
            command.Parameters.AddWithValue("@p3", id);
            command.ExecuteNonQuery();
            con.connection().Close() ;

        }
    }
}