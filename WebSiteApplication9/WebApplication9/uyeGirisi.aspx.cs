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
    public partial class uyeGirisi : System.Web.UI.Page
    {
        SqlBaglanti baglan = new SqlBaglanti();

        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_uyeGiris_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select *from Kullanici where uye_kullaniciAdi='" + txt_kullaniciAdi.Text + "' and uye_sifre='" + txt_sifre.Text + "'", baglan.Baglan());
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {


                Response.Redirect("AnaSayfa.aspx");

            }
            else
            {
                lbl_uyarı.Text = "Hatalı Giriş Yaptınız!!";
            }
        }
    }
}