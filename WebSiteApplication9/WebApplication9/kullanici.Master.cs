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
    public partial class kullanici : System.Web.UI.MasterPage
    {

        SqlBaglanti baglanti = new SqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            //slider cekme
            SqlCommand cmdslider = new SqlCommand("Select TOP 5 * from Makale order by makale_okunmaSayisi Desc",baglanti.Baglan());
            SqlDataReader drslider = cmdslider.ExecuteReader();


            dl_slider.DataSource = drslider;
            dl_slider.DataBind();

            //duyurular cekme

            SqlCommand cmdduyuru = new SqlCommand("Select TOP 5 * from Duyurular order by  duyurular_id desc",baglanti.Baglan());
            SqlDataReader drduyuru = cmdduyuru.ExecuteReader();

            dl_duyurular.DataSource = drduyuru;
            dl_duyurular.DataBind();

            //kategori cekme 

            SqlCommand cmdkategori = new SqlCommand("Select * from Kategori", baglanti.Baglan());
            SqlDataReader drkategori = cmdkategori.ExecuteReader();

            dl_kategori.DataSource = drkategori;
            dl_kategori.DataBind();
        }
     

        protected void Btn_ara_Click(object sender, EventArgs e)
        {
            Response.Redirect("aradetay.aspx?aranankelime=" + txt_ara.Text);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("uyeGirisi.aspx");

        }

        protected void btn_uyeKaydi_Click(object sender, EventArgs e)
        {
            Response.Redirect("uyeKaydi.aspx");

        }
    }
}