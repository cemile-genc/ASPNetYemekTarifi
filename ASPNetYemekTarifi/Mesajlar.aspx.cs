using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ASPNetYemekTarifi
{
    public partial class Mesajlar : System.Web.UI.Page
    {
        SqlClass con = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible=false;
            SqlCommand command= new SqlCommand("select * from tbl_mesajlar",con.connection());   
            SqlDataReader reader=command.ExecuteReader();
            DataList1.DataSource= reader;
            DataList1.DataBind();
    

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Panel2.Visible= true;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Panel2.Visible= false;
        }
    }
}