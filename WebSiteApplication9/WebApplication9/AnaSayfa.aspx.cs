using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication9
{
    public partial class AnaSayfa : System.Web.UI.Page
    {

        SqlBaglanti baglanti = new SqlBaglanti();

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmdmakale = new SqlCommand("SELECT dbo.Makale.makale_baslik, dbo.Makale.makale_ozet,dbo.Makale.makale_id, dbo.Makale.makale_tarih, dbo.Makale.makale_okunmaSayisi, dbo.Makale.makale_yorumSayisi, dbo.Kategori.kategori_resim FROM dbo.Makale INNER JOIN dbo.Kategori ON dbo.Makale.kategori_id = dbo.Kategori.kategori_id order by makale_id desc", baglanti.Baglan());
            SqlDataReader drmakale = cmdmakale.ExecuteReader();

            dl_makale.DataSource = drmakale;
            dl_makale.DataBind();
        }

        protected void dl_makale_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}