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
    public partial class aradetay : System.Web.UI.Page
    {

        SqlBaglanti baglanti = new SqlBaglanti();
        String aranankelime = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            aranankelime = Request.QueryString["aranankelime"];

            if (Page.IsPostBack==false)
            {
                SqlCommand cmdara = new SqlCommand("SELECT dbo.Makale.makale_baslik, dbo.Makale.makale_ozet,dbo.Makale.makale_id, dbo.Makale.makale_tarih, dbo.Makale.makale_okunmaSayisi, dbo.Makale.makale_yorumSayisi, dbo.Kategori.kategori_resim FROM dbo.Makale INNER JOIN dbo.Kategori ON dbo.Makale.kategori_id = dbo.Kategori.kategori_id where makale_baslik like '%"+aranankelime+"%' or makale_ozet like '%"+aranankelime+ "%'  ", baglanti.Baglan());
                SqlDataReader drara= cmdara.ExecuteReader();

                dl_ara.DataSource = drara;
                dl_ara.DataBind();
            }

        }
    }
}