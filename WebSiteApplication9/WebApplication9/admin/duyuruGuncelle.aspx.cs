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
    public partial class duyuruGuncelle : System.Web.UI.Page
    {

        SqlBaglanti baglan = new SqlBaglanti();
        String duyurular_id = "";

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["yonetici_kullaniciAdi"] == null)
            {

                Response.Redirect("default.aspx");

            }
            duyurular_id = Request.QueryString["duyurular_id"];
            if (Page.IsPostBack == false)
            {

                SqlCommand cmddgetir = new SqlCommand("Select * from Duyurular where duyurular_id='" + duyurular_id + "'", baglan.Baglan());
                SqlDataReader drdgetir = cmddgetir.ExecuteReader();


                DataTable dtdgetir = new DataTable("tablo");
                dtdgetir.Load(drdgetir);


                DataRow row = dtdgetir.Rows[0];
                txtbx_dbaslik.Text =row["duyurular_baslik"].ToString();
                cke_duyuruGunicerik.Text =row["duyurular_icerik"].ToString();
            }
        }

        protected void btn_guncelle_Click(object sender, EventArgs e)
        {
            

                SqlCommand cmddguncelle = new SqlCommand("Update Duyurular Set duyurular_baslik='" + txtbx_dbaslik.Text + "',duyurular_icerik='" +cke_duyuruGunicerik.Text+"'  where duyurular_id='" + duyurular_id + "' ", baglan.Baglan());
                cmddguncelle.ExecuteNonQuery();

                Response.Redirect("duyurular.aspx");

           
        }
    }
}