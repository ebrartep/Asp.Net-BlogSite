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
    public partial class makaledetay : System.Web.UI.Page
    {
        SqlBaglanti baglanti = new SqlBaglanti();
        String makale_id = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            makale_id = Request.QueryString["makale_id"];
            if(Page.IsPostBack==false){
                
                //makale getir

                SqlCommand cmdmakaleDetay = new SqlCommand("SELECT dbo.Makale.makale_baslik, dbo.Makale.makale_icerik,dbo.Makale.makale_id ,dbo.Makale.makale_tarih, dbo.Makale.makale_okunmaSayisi, dbo.Makale.makale_yorumSayisi, dbo.Kategori.kategori_resim, dbo.Kategori.kategori_id FROM  dbo.Kategori INNER JOIN dbo.Makale ON dbo.Kategori.kategori_id = dbo.Makale.kategori_id where dbo.Makale.makale_id='" + makale_id + "'", baglanti.Baglan());
                SqlDataReader drmakaleDetay = cmdmakaleDetay.ExecuteReader();

                dl_makale.DataSource = drmakaleDetay;
                dl_makale.DataBind();


                //makale okunma sayısı
                SqlCommand cmdokuma = new SqlCommand("Update Makale Set makale_okunmaSayisi=makale_okunmaSayisi+1 where makale_id='"+makale_id+"'", baglanti.Baglan());
                cmdokuma.ExecuteNonQuery();


                //yorumgetir

                SqlCommand cmdyorumGetir = new SqlCommand("Select * from Yorum where makale_id='"+makale_id+"'  and  yorum_onay=1", baglanti.Baglan());
                SqlDataReader dryorumGetir = cmdyorumGetir.ExecuteReader();

                dl_yorumGetir.DataSource = dryorumGetir;
                dl_yorumGetir.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmdYorumEkle = new SqlCommand("insert into Yorum(yorum_adSoyad,yorum_email,yorum_icerik,yorum_resim,makale_id) Values ('"+txt_AdSoyad.Text+ "','"+txt_email.Text+ "','"+txtbx_yorumIcerik.Text+ "','/temalar/yorumyap.png','"+makale_id+"')", baglanti.Baglan());


            cmdYorumEkle.ExecuteNonQuery();
            lbl_bilgi.Text = "Yorumunuz Alındı";
            txt_AdSoyad.Text = "";
            txt_email.Text = "";
            txtbx_yorumIcerik.Text = "";



        }

        protected void dl_makale_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}