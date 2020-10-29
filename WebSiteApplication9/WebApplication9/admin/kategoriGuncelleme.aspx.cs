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
    public partial class kategoriGuncelleme : System.Web.UI.Page
    {
        SqlBaglanti baglan = new SqlBaglanti();
        String kategori_id = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["yonetici_kullaniciAdi"] == null)
            {

                Response.Redirect("default.aspx");

            }

            kategori_id = Request.QueryString["kategori_id"];
            if (Page.IsPostBack == false)
            {
                SqlCommand cmdkguncelle = new SqlCommand("Select * from Kategori where kategori_id='"+kategori_id+"'", baglan.Baglan());
                SqlDataReader drkguncelle = cmdkguncelle.ExecuteReader();

                DataTable dtkgncelle = new DataTable("tablo");
                dtkgncelle.Load(drkguncelle);

                DataRow row = dtkgncelle.Rows[0];
                txt_kadi.Text = row["kategori_adi"].ToString();
                txt_ksirasi.Text = row["kategori_sira"].ToString();
                txt_kadet.Text = row["kategori_adet"].ToString();

            }
        }

        protected void btn_guncelle_Click(object sender, EventArgs e)
        {
            if (fu_kresim.HasFile)
            {
                fu_kresim.SaveAs(Server.MapPath("/kresim/" + fu_kresim.FileName));

                SqlCommand cmdkguncelle = new SqlCommand("Update Kategori Set kategori_adi='"+txt_kadi.Text+"',kategori_sira='"+txt_ksirasi.Text+"',kategori_adet='"+txt_kadet.Text+"',kategori_resim='/kresim"+fu_kresim.FileName+"'  where kategori_id='"+kategori_id+"' ", baglan.Baglan());
                cmdkguncelle.ExecuteNonQuery();

                Response.Redirect("kategoriler.aspx");

            }
            else
            {
                SqlCommand cmdguncelle = new SqlCommand("Update Kategori Set kategori_adi='" + txt_kadi.Text + "',kategori_sira='" + txt_ksirasi.Text + "',kategori_adet='" + txt_kadet.Text + "'  where kategori_id='" + kategori_id + "'", baglan.Baglan());
                cmdguncelle.ExecuteNonQuery();

                Response.Redirect("kategoriler.aspx");
            }
        }
    }
}