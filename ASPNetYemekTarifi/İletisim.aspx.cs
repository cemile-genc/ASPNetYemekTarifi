using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace ASPNetYemekTarifi
{
    public partial class İletisim : System.Web.UI.Page
    {
        SqlClass con = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("insert into Tbl_Mesajlar (MesajGonderen, MesajMail, MesajKonu,Mesajİcerik) values (@p1,@p2,@p3,@p4)",con.connection());
            command.Parameters.AddWithValue("@p1", TxtAdSoyad.Text);
            command.Parameters.AddWithValue("@p2", TxtMail.Text);
            command.Parameters.AddWithValue("@p3", TxtKonu.Text);
            command.Parameters.AddWithValue("@p4", Txtİcerik.Text);
            command.ExecuteNonQuery();
            con.connection().Close();
        }
    }
}