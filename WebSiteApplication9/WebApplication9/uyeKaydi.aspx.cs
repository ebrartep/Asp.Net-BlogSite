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
    public partial class uyeKaydi : System.Web.UI.Page
    {
        SqlBaglanti baglan = new SqlBaglanti();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

     
        protected void btn_kaydet_Click(object sender, EventArgs e)
        {
            SqlCommand cmdkullaniciEkle = new SqlCommand("insert into Kullanici (uye_ad,uye_soyad,uye_yas,uye_adres,uye_telefon,uye_kullaniciAdi,uye_sifre) Values('" + txt_adi.Text + "','" + txt_soyadi.Text + "','" + txt_yasi.Text + "','" + txt_adres.Text + "','" + txt_telefon.Text + "','" + txt_uyeAdi.Text + "','" + txt_sifre.Text + "')", baglan.Baglan());
            cmdkullaniciEkle.ExecuteNonQuery();

            lbl_bilgi.Text = "Kayıt Başarılı !!";

            Response.Redirect("uyeKaydi.aspx");
        }

        protected void btn_temizle_Click1(object sender, EventArgs e)
        {
            txt_adi.Text = "";
            txt_adres.Text = "";
            txt_sifre.Text = "";
            txt_soyadi.Text = "";
            txt_telefon.Text = "";

            txt_uyeAdi.Text = "";
            txt_yasi.Text = "";
        }

        protected void btn_uyeGirisi_Click(object sender, EventArgs e)
        {
            Response.Redirect("uyeGirisi.aspx");

        }
    }
}