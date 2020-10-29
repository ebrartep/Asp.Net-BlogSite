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
    public partial class iletisim : System.Web.UI.Page
    {

        SqlBaglanti baglanti = new SqlBaglanti();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_mesajEkle_Click(object sender, EventArgs e)
        {

            SqlCommand cmdekle = new SqlCommand("insert into Iletisim(iletisim_adSoyad,iletisim_email,iletisim_icerik) Values('"+txt_AdSoyad.Text+ "','"+txt_email.Text+ "','"+txtbx_yorumIcerik.Text+"')", baglanti.Baglan());
            cmdekle.ExecuteNonQuery();

            txt_AdSoyad.Text = "";
            txt_email.Text = "";
            txtbx_yorumIcerik.Text = "";
            lbl_bilgi.Text = "Mesajınız Alındı.";
        }
    }
}