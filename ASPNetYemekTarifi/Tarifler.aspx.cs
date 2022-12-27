using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ASPNetYemekTarifi
{
    public partial class Tarifler : System.Web.UI.Page
    {
        SqlClass con = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible= false;
            Panel4.Visible= false;
            SqlCommand command = new SqlCommand("Select * from tbl_tarifler where tarifdurum=0", con.connection());
            SqlDataReader read = command.ExecuteReader();
            DataList1.DataSource = read;
            DataList1.DataBind();

            SqlCommand command1 = new SqlCommand("Select * from tbl_tarifler where tarifdurum=1", con.connection());
            SqlDataReader read1 = command1.ExecuteReader();
            DataList2.DataSource = read1;
            DataList2.DataBind();

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Panel2.Visible= true; 
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Panel4.Visible= true;
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Panel4.Visible=false;
        }
    }
}