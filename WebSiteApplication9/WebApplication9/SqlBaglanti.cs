using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

using System.Linq;
using System.Web;

namespace WebApplication9
{
    public class SqlBaglanti
    {
        public SqlConnection Baglan()
        {
            SqlConnection baglanti = new SqlConnection("Data Source=TOSHIBA1\\EBRAR;Initial Catalog=siteDB;Integrated Security=True");
            baglanti.Open();
            SqlConnection.ClearPool(baglanti);
            SqlConnection.ClearAllPools();

            return (baglanti);
        }
    }
}