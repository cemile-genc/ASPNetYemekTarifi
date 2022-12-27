using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace ASPNetYemekTarifi
{
    public class SqlClass
    {
        public SqlConnection connection()
        {
            SqlConnection sqlConnection = new SqlConnection(@"data source=DESKTOP-DQPG2RA;initial catalog=DbYemekTarifi;integrated security=true");
            sqlConnection.Open();
            return sqlConnection;
        }
    }
 }