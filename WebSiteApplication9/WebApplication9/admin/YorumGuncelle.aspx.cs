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
    public partial class YorumGuncelle : System.Web.UI.Page
    {

        SqlBaglanti baglanti = new SqlBaglanti();
        String yorum_id = "";
        String makale_id = "";

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["yonetici_kullaniciAdi"] == null)
            {

                Response.Redirect("default.aspx");

            }

            if (Page.IsPostBack == false)
            {

                yorum_id = Request.QueryString["yorum_id"];
                makale_id = Request.QueryString["makale_id"];
                //onaysız yorum
                SqlCommand cmdygetir = new SqlCommand("Select * from Yorum where yorum_id='" + yorum_id + "'", baglanti.Baglan());
                SqlDataReader drygetir = cmdygetir.ExecuteReader();

                DataTable dtygetir = new DataTable("tablo");
                dtygetir.Load(drygetir);

                DataRow row = dtygetir.Rows[0];
                txtbx_Kisi.Text = row["yorum_adSoyad"].ToString();
                txtbx_yorum.Text = row["yorum_icerik"].ToString();

            }
        }



        protected void btn_gnclle_Click(object sender, EventArgs e)
        {

            yorum_id = Request.QueryString["yorum_id"];
            makale_id = Request.QueryString["makale_id"];

            SqlCommand cmdmguncelle = new SqlCommand("Update Yorum Set yorum_adSoyad='" + txtbx_Kisi.Text + "',yorum_icerik='" + txtbx_yorum.Text + "', yorum_onay='" + checbx_onay.Checked + "' where yorum_id='" + yorum_id + "'", baglanti.Baglan());
            cmdmguncelle.ExecuteNonQuery();


            if (checbx_onay.Checked == true) { 
            SqlCommand cmdEkle = new SqlCommand("Update Makale Set makale_yorumSayisi=makale_yorumSayisi+1 where makale_id='" + makale_id + "'", baglanti.Baglan());
            cmdEkle.ExecuteNonQuery();
                Response.Redirect("Yorumlar.aspx");
            }
            if (checbx_onay.Checked == false)
            {
                
                   


                    SqlCommand cmdAzalt = new SqlCommand("Update Makale Set makale_yorumSayisi=makale_yorumSayisi-1 where makale_id='" + makale_id + "'", baglanti.Baglan());
                cmdAzalt.ExecuteNonQuery();
                    Response.Redirect("Yorumlar.aspx");
                

            }


        }

        protected void txt_onay_TextChanged(object sender, EventArgs e)
        {

        }
    }
}