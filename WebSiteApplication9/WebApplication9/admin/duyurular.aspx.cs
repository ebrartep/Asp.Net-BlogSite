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


    public partial class duyurular : System.Web.UI.Page
    {
        SqlBaglanti baglan = new SqlBaglanti();
        String duyurular_id = "";
        String islem = "";

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["yonetici_kullaniciAdi"] == null)
            {

                Response.Redirect("default.aspx");

            }

            duyurular_id = Request.QueryString["duyurular_id"];
            islem = Request.QueryString["islem"];

            if (islem == "sil")
            {
                SqlCommand cmddsil = new SqlCommand("Delete from Duyurular where duyurular_id='"+duyurular_id+"'",baglan.Baglan());
                cmddsil.ExecuteNonQuery();
            }


            if (Page.IsPostBack==false)
            {
                pnl_duyuruEkle.Visible = false;
                pnl_duyuruDuzenle.Visible = false;

                //duyuruları getir
                SqlCommand cmddgetir = new SqlCommand("select * from Duyurular", baglan.Baglan());
                SqlDataReader drdgetir = cmddgetir.ExecuteReader();

                dl_duyuruGetir.DataSource = drdgetir;
                dl_duyuruGetir.DataBind();
            }
        }

        protected void btn_duyuruEkleArti_Click(object sender, EventArgs e)
        {
            pnl_duyuruEkle.Visible = true;

        }

        protected void btn_duyuruEksi_Click(object sender, EventArgs e)
        {
            pnl_duyuruEkle.Visible = false;
        }

        protected void btn_duyuruEkle_Click(object sender, EventArgs e)
        {
            SqlCommand cmdekle = new SqlCommand("insert into Duyurular(duyurular_baslik,duyurular_icerik,duyurular_resim) Values('"+txtbx_duyuruBaslik.Text+ "','"+cke_duyuruİcerik.Text+"','/temalar/duyuru.png')", baglan.Baglan());
            cmdekle.ExecuteNonQuery();

            Response.Redirect("duyurular.aspx");
        }

        protected void btn_dDuzenleEksi_Click(object sender, EventArgs e)
        {
            pnl_duyuruDuzenle.Visible = false;
        }

        protected void btn_dDuzenleArti_Click(object sender, EventArgs e)
        {
            pnl_duyuruDuzenle.Visible = true;
        }
    }
}