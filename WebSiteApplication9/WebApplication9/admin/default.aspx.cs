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
    public partial class _default : System.Web.UI.Page
    {
        SqlBaglanti baglan = new SqlBaglanti();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void btn_giris_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select *from Yonetici where yonetici_kullaniciAdi='"+txtbox_kulAd.Text+ "' and yonetici_sifre='" + txtbox_sifre.Text + "'", baglan.Baglan());
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {

                Session["yonetici_kullaniciAdi"]=dr["yonetici_kullaniciAdi"];

                Response.Redirect("adminpanel.aspx");

            }
            else
            {
                lbl_bilgi.Text = "Hatalı Giriş Yaptınız!!";
            }
        }
    }
}