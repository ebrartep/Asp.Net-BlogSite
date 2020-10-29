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
    public partial class kategoridetay : System.Web.UI.Page
    {
        SqlBaglanti baglanti = new SqlBaglanti();
        string kategori_id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategori_id = Request.QueryString["kategori_id"];
            SqlCommand cmdkategoriDetay = new SqlCommand("SELECT dbo.Makale.makale_baslik, dbo.Makale.makale_ozet, dbo.Makale.makale_tarih,dbo.Makale.makale_id, dbo.Makale.makale_okunmaSayisi, dbo.Makale.makale_yorumSayisi, dbo.Kategori.kategori_resim, dbo.Kategori.kategori_id FROM  dbo.Kategori INNER JOIN dbo.Makale ON dbo.Kategori.kategori_id = dbo.Makale.kategori_id where dbo.Kategori.kategori_id='"+kategori_id+"'", baglanti.Baglan()) ;
            SqlDataReader drkategoriDetay = cmdkategoriDetay.ExecuteReader();

            dl_kategori.DataSource = drkategoriDetay;
            dl_kategori.DataBind();
        }
    }
}