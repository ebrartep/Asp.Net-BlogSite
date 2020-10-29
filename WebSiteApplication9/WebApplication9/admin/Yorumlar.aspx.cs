using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace WebApplication9.admin
{
    public partial class Yorumlar : System.Web.UI.Page
    {

        SqlBaglanti baglanti = new SqlBaglanti();
        String yorum_id = "";
        String islem = "";
        String islemiki = "";
        String makale_id = "";

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["yonetici_kullaniciAdi"] == null)
            {

                Response.Redirect("default.aspx");

            }

            yorum_id = Request.QueryString["yorum_id"];
            islem = Request.QueryString["islem"];
            islemiki = Request.QueryString["islemiki"];
            makale_id = Request.QueryString["makale_id"];


            if (islem == "sil")
            {

                SqlCommand cmdsil = new SqlCommand("Delete From Yorum where yorum_id='" + yorum_id + "'",baglanti.Baglan());
                cmdsil.ExecuteNonQuery();

                Response.Redirect("Yorumlar.aspx");
            }
            




            if (Page.IsPostBack == false)
            {

                pnl_onaysizYorum.Visible = false;
                pnl_yorumOnayli.Visible = false;

                //onaysız yorum
                SqlCommand cmdyorum = new SqlCommand("SELECT dbo.Makale.makale_id, dbo.Makale.makale_baslik, dbo.Makale.makale_yorumSayisi, dbo.Yorum.yorum_id, dbo.Yorum.yorum_adSoyad, dbo.Yorum.yorum_email, dbo.Yorum.yorum_icerik, dbo.Yorum.yorum_tarih, dbo.Yorum.yorum_onay, dbo.Yorum.yorum_resim FROM  dbo.Makale INNER JOIN dbo.Yorum ON dbo.Makale.makale_id = dbo.Yorum.makale_id where yorum_onay=0" , connection: baglanti.Baglan());
                SqlDataReader dryorum = cmdyorum.ExecuteReader();

                dl_yorumEkle.DataSource = dryorum;
                dl_yorumEkle.DataBind();


                //onaylı yorum

                SqlCommand cmdOnayliyorum = new SqlCommand("SELECT dbo.Makale.makale_id, dbo.Makale.makale_baslik, dbo.Makale.makale_yorumSayisi, dbo.Yorum.yorum_id, dbo.Yorum.yorum_adSoyad, dbo.Yorum.yorum_email, dbo.Yorum.yorum_icerik, dbo.Yorum.yorum_tarih, dbo.Yorum.yorum_onay, dbo.Yorum.yorum_resim FROM  dbo.Makale INNER JOIN dbo.Yorum ON dbo.Makale.makale_id = dbo.Yorum.makale_id where yorum_onay=1", baglanti.Baglan());
                SqlDataReader drOyorum = cmdOnayliyorum.ExecuteReader();

                dl_onaylanan.DataSource = drOyorum;
                dl_onaylanan.DataBind();
            }

        }

        protected void dl_yorumEkle_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btn_oySil_Click(object sender, EventArgs e)
        {
            pnl_onaysizYorum.Visible = false;
        }

        protected void btn_oyEkle_Click(object sender, EventArgs e)
        {
            pnl_onaysizYorum.Visible = true;

        }

        protected void btn_ooArti_Click(object sender, EventArgs e)
        {
            pnl_yorumOnayli.Visible = true;
        }

        protected void btn_ooEksi_Click(object sender, EventArgs e)
        {
            pnl_yorumOnayli.Visible = false;
        }
    }
}