using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace ASPNetYemekTarifi
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        SqlClass con = new SqlClass();
        string Yemekid = ""; //Değişkenin ilk değeri null

        protected void Page_Load(object sender, EventArgs e)

        {
            //SqlCommand sınıfından bir nesne üretildi.
            //Bu nesneye bir sql komutu atandı = Yemekler tablosundan data çekecek.
            //con.connection ile connectiona bağlı olan veritabanı adresini çekti.
            //SQLDataReader (veri okuyucusu) sınıfından dr isimli nesne oluşturuldu.
            //Bu nesneyi komuttan gelen sorgu ile ilişkilendirdi.
            //bi döngü ile dr nesnesi okuma işlemi devam ettikçe LABEL3 e dr den gelecek olan sorguda 0.parametreyi yazdır. 
            Yemekid = Request.QueryString["Yemekid"]; //string tipinde yaptığın sorgulamayı bu yemekId isimli değişkene request et (istek)

            SqlCommand command = new SqlCommand("Select YemekAdı from tbl_Yemekler where Yemekid=@p1", con.connection());
            command.Parameters.AddWithValue("@p1", Convert.ToInt32(Yemekid));
            SqlDataReader dr = command.ExecuteReader();
            while (dr.Read())
            {
                Label3.Text = dr[0].ToString();

            }
            con.connection().Close();
            // yorumları listeleme
            SqlCommand command2 = new SqlCommand("select *from tbl_Yorumlar where yemekid=@p2", con.connection());
            command2.Parameters.AddWithValue("@p2", Yemekid);
            SqlDataReader dr2 = command2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand command3 = new SqlCommand("insert into tbl_Yorumlar (YorumMail,YorumAdSoyad, Yorumİcerik,yemekid) values (@p3,@p4,@p5,@p6) ", con.connection());
            command3.Parameters.AddWithValue("@p3", TextBox1.Text);
            command3.Parameters.AddWithValue("@p4", TextBox2.Text);
            command3.Parameters.AddWithValue("@p5", TextBox3.Text);
            command3.Parameters.AddWithValue("@p6", Yemekid);
            command3.ExecuteNonQuery();
            Response.Write("Yorumunuz Alınmıştır. Teşekkürler!");
            con.connection().Close();
        }
    }
}