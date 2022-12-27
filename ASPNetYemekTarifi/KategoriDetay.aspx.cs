using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ASPNetYemekTarifi
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        SqlClass con = new SqlClass();
        string kategoriID = " ";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriID = Request.QueryString["KategoriID"];
            SqlCommand command = new SqlCommand("Select * From Tbl_Yemekler  where kategoriID=@p1", con.connection());
            command.Parameters.AddWithValue("@p1", kategoriID);
            SqlDataReader reader= command.ExecuteReader();
            DataList2.DataSource= reader;
            DataList2.DataBind();
        }
    }
}