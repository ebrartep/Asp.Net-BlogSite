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
    public partial class makaleGuncelle : System.Web.UI.Page
    {
        SqlBaglanti baglan = new SqlBaglanti();
        String makale_id = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["yonetici_kullaniciAdi"] == null)
            {

                Response.Redirect("default.aspx");

            }

            makale_id = Request.QueryString["makale_id"];
            if (Page.IsPostBack==false)
            {
                SqlCommand cmdmgetir = new SqlCommand("Select * from Makale where makale_id='" + makale_id + "'", baglan.Baglan());
                SqlDataReader drmgetir = cmdmgetir.ExecuteReader();

                DataTable dtmgetir = new DataTable("tablo");
                dtmgetir.Load(drmgetir);

                DataRow row = dtmgetir.Rows[0];
                
                txtbx_mbaslik.Text = row["makale_baslik"].ToString();
                txtbx_mozet.Text = row["makale_ozet"].ToString();
                cke_micerik.Text = row["makale_icerik"].ToString();
                txtbx_myorumSayisi.Text = row["makale_yorumSayisi"].ToString();



            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btn_mGuncelle_Click(object sender, EventArgs e)
        {
            if (fu_mslider.HasFile)
            {
                fu_mslider.SaveAs(Server.MapPath("/images/" + fu_mslider.FileName));

                SqlCommand cmdmguncelle = new SqlCommand("Update Makale set makale_baslik='"+txtbx_mbaslik.Text+ "',makale_ozet='"+txtbx_mozet.Text+ "',makale_icerik='"+cke_micerik.Text+ "',makale_yorumSayisi='"+txtbx_myorumSayisi.Text+"',makale_resim='/images"+fu_mslider.FileName+"'   where makale_id='"+makale_id+"'", baglan.Baglan());
                cmdmguncelle.ExecuteNonQuery();

                Response.Redirect("makaleler.aspx");
            }
            else
            {
                SqlCommand cmdmguncelle = new SqlCommand("Update Makale set makale_baslik='" + txtbx_mbaslik.Text + "',makale_ozet='" + txtbx_mozet.Text + "',makale_icerik='" + cke_micerik.Text + "',makale_yorumSayisi='" + txtbx_myorumSayisi.Text + "' where makale_id='"+makale_id+"'", baglan.Baglan());
                cmdmguncelle.ExecuteNonQuery();

                Response.Redirect("makaleler.aspx");

            }
        }
    }
}