using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ASPNetYemekTarifi
{
    public partial class TarifOnerisi : System.Web.UI.Page
    {
        SqlClass con= new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnKaydet_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("insert into Tbl_Tarifler (TarifAd,TarifMalzeme,TarifAnlatim,TarifResim,TarifSahibi,TarifSahipMail) values (@t1,@t2,@t3,@t4,@t5,@t6) ", con.connection());
            command.Parameters.AddWithValue("@t1", TxtTarifAd.Text);
            command.Parameters.AddWithValue("@t2", TxtMalzemeler.Text);
            command.Parameters.AddWithValue("@t3", TxtYapilis.Text);
            command.Parameters.AddWithValue("@t4", FileUpload1.FileName);
            command.Parameters.AddWithValue("@t5", TxtTarifOneren.Text);
            command.Parameters.AddWithValue("@t6", TxtMail.Text);
            command.ExecuteNonQuery();
            con.connection().Close();
            Response.Write("Tarifiniz Alınmıştır. Teşekkürler!");
        }
    }
}