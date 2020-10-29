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
    public partial class mesajlar : System.Web.UI.Page
    {
        SqlBaglanti baglanti = new SqlBaglanti();
        String iletisim_id = "";
        String islem = "";

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["yonetici_kullaniciAdi"] == null)
            {

                Response.Redirect("default.aspx");

            }

            iletisim_id = Request.QueryString["iletisim_id"];
            islem = Request.QueryString["islem"];

            if (islem=="sil")
            {
                SqlCommand cmdsil = new SqlCommand("Delete from Iletisim where iletisim_id='"+iletisim_id+"'", baglanti.Baglan());
                cmdsil.ExecuteNonQuery();

                Response.Redirect("mesajlar.aspx");

            }
            if(Page.IsPostBack==false)
            {
                pnl_mesaj.Visible = false;


            }

            SqlCommand cmdmesaj = new SqlCommand("Select * from Iletisim", baglanti.Baglan());
            SqlDataReader drmesaj = cmdmesaj.ExecuteReader();

            dl_mesajGoster.DataSource = drmesaj;
            dl_mesajGoster.DataBind();

        }

        protected void btn_mArti_Click(object sender, EventArgs e)
        {
            pnl_mesaj.Visible = true;

        }

        protected void btn_mEksi_Click(object sender, EventArgs e)
        {
            pnl_mesaj.Visible = false;

        }
    }
}