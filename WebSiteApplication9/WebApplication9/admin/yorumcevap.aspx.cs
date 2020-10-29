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
    public partial class yorumcevap : System.Web.UI.Page
    {

        SqlBaglanti baglanti = new SqlBaglanti();
        String makale_id = "";

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["yonetici_kullaniciAdi"] == null)
            {

                Response.Redirect("default.aspx");

            }
        }

        protected void btn_cevapYaz_Click(object sender, EventArgs e)
        {
            makale_id = Request.QueryString["makale_id"];

            SqlCommand cmdyEkle = new SqlCommand("insert into Yorum (yorum_adSoyad ,yorum_icerik,yorum_resim,makale_id) Values('" + TextBox1.Text + "','" + txtbx_yorumIcerik.Text + "','/temalar/admin.png','" + makale_id + "')", baglanti.Baglan());
            cmdyEkle.ExecuteNonQuery();

            Response.Redirect("Yorumlar.aspx");
        }
    }
}