using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNetYemekTarifi
{
    public partial class Hakkimizda : System.Web.UI.Page
    {
        SqlClass con = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("select * from Tbl_Hakkimizda", con.connection());
            SqlDataReader read = command.ExecuteReader();
            DataList2.DataSource = read;
            DataList2.DataBind();


        }
    }
}