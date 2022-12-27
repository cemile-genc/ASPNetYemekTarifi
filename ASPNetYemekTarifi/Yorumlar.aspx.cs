using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNetYemekTarifi
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        SqlClass con = new SqlClass();
        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["Yorumid"];
                islem = Request.QueryString["islem"];
            }
            //Onaylı yorumlar
            SqlCommand command = new SqlCommand("select * from Tbl_Yorumlar where yorumonay=1", con.connection());
            SqlDataReader reader = command.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();

            //Onaylanmayan yorumlar
            SqlCommand command1 = new SqlCommand("select * from Tbl_Yorumlar where yorumonay=0", con.connection());
            SqlDataReader reader1 = command1.ExecuteReader();
            DataList2.DataSource = reader1;
            DataList2.DataBind();
            //Bu işlem çok tercih edilmez ilişkili tablolarda hataya sebep olur.
            if (islem == "sil")
            {
                SqlCommand cmddelete = new SqlCommand("delete from Tbl_Yorumlar where yorumid=@p1", con.connection());
                cmddelete.Parameters.AddWithValue("@p1", id);
                cmddelete.ExecuteNonQuery();
                con.connection().Close();
            }
            Panel2.Visible = false; //panel ilk açılışta kapalı olacak.
            Panel5.Visible = false;

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;

        }
        protected void Button6_Click1(object sender, EventArgs e)
        {
            Panel2.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel5.Visible = true;

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Panel5.Visible = false;

        }
    }
}