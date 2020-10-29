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
    public partial class makaleler : System.Web.UI.Page
    {
        SqlBaglanti baglan = new SqlBaglanti();
        String makale_id = "";
        String islem = "";
        protected void Page_Load(object sender, EventArgs e)

        {
            if (Session["yonetici_kullaniciAdi"]==null)
            {

                Response.Redirect("default.aspx");

            }
            if (Page.IsPostBack == false)
            {

                makale_id = Request.QueryString["makale_id"];
                islem = Request.QueryString["islem"];
                if (islem == "sil")
                {
                    SqlCommand cmdmsil = new SqlCommand("Delete from Makale where makale_id='"+makale_id+"'",baglan.Baglan());
                    cmdmsil.ExecuteNonQuery();
                }


                pnl_makaleEkle.Visible = false;
                pnl_mDzenle.Visible = false;
                pnl_mdosya.Visible = false;

                //kategorileri getir
                SqlCommand cmdkgetir = new SqlCommand("Select * from Kategori ", baglan.Baglan());
                SqlDataReader drkgetir = cmdkgetir.ExecuteReader();
                ddl_kategori.DataTextField = "kategori_adi";
                ddl_kategori.DataValueField = "kategori_id";

                ddl_kategori.DataSource = drkgetir;
                ddl_kategori.DataBind();

                //makaleleri getir
                SqlCommand cmdmgetir = new SqlCommand("Select * from Makale", baglan.Baglan());
                SqlDataReader drmgetir = cmdmgetir.ExecuteReader();
                dl_mduzenle.DataSource = drmgetir;
                dl_mduzenle.DataBind(); 
                    }
        }

        protected void btn_makaleEkle_Click(object sender, EventArgs e)
        {
            pnl_makaleEkle.Visible = true;
        }

        protected void btn_makaleSil_Click(object sender, EventArgs e)
        {
            pnl_makaleEkle.Visible = false;
        }

        protected void btn_ekle0_Click(object sender, EventArgs e)
        {
            if (fu_slider.HasFile)
            {
                fu_slider.SaveAs(Server.MapPath("/images/" + fu_slider.FileName));

                SqlCommand cmdmekle = new SqlCommand("insert into Makale(makale_baslik,makale_ozet,makale_icerik,makale_resim,kategori_id) Values('"+txtbx_baslik.Text+ "','"+txtbx_özet.Text+ "','"+ckeEd_icerik.Text+ "','/images/"+fu_slider.FileName+ "','"+ddl_kategori.SelectedValue+"')", baglan.Baglan());
                cmdmekle.ExecuteNonQuery();


                SqlCommand cmdkategoriAdet = new SqlCommand("Update Kategori Set kategori_adet=kategori_adet+1 where kategori_id='"+ddl_kategori.SelectedValue+"'",baglan.Baglan());
                cmdkategoriAdet.ExecuteNonQuery();

                Response.Redirect("makaleler.aspx");
            }
            else
            {
                btn_ekle0.Text = "Resim Ekle!";
            }
        }

        protected void btn_mdArti_Click(object sender, EventArgs e)
        {
            pnl_mDzenle.Visible = true;
        }

        protected void btn_mdEksi_Click(object sender, EventArgs e)
        {
            pnl_mDzenle.Visible = false;
        }

        protected void btn_mdosyaArti_Click(object sender, EventArgs e)
        {
            pnl_mdosya.Visible = true;
        }

        protected void btn_mdosyaEksi_Click(object sender, EventArgs e)
        {
            pnl_mdosya.Visible = false;
        }

        protected void btn_mDosyaEkle_Click(object sender, EventArgs e)
        {
            if (fu_mDosyaEkle.HasFile)
            {
                fu_mDosyaEkle.SaveAs(Server.MapPath("/dosyalar/" + fu_mDosyaEkle.FileName));
                Response.Redirect("makaleler.aspx");
            }
            else
            {
                btn_mDosyaEkle.Text = "Dosya Ekle!!!";
            }
        }
    }
}