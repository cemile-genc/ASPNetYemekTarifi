using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ASPNetYemekTarifi
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        SqlClass con = new SqlClass();
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            
            id = Request.QueryString["mesajid"];
            
            SqlCommand command= new SqlCommand("Select * from Tbl_Mesajlar where mesajid=@p1", con.connection());
            command.Parameters.AddWithValue("@p1", id);  
            SqlDataReader read= command.ExecuteReader();
            while(read.Read())
            {
                TxtMesajGonderen.Text= read[1].ToString();
                TxtMesajBaslik.Text= read[2].ToString();
                TxtMail.Text= read[3].ToString();
                TxtMEsajİcerik.Text= read[4].ToString();
            }
            con.connection().Close();
        }
    }
}