using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace WebApplication9.admin
{
    public partial class kategoriler : System.Web.UI.Page
    {
        SqlBaglanti baglan = new SqlBaglanti();
        string kategori_id = "";
        string islem = "";

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["yonetici_kullaniciAdi"] == null)
            {

                Response.Redirect("default.aspx");

            }

            kategori_id = Request.QueryString["kategori_id"];
            islem = Request.QueryString["islem"];
            if (islem=="sil")
            {
                SqlCommand cmdsil = new SqlCommand("Delete from Kategori where kategori_id='"+kategori_id+"'", baglan.Baglan());
                cmdsil.ExecuteNonQuery();
            }
            if (Page.IsPostBack == false)
            {
                pnl_ktgriEkle.Visible = false;
                pnl_kategoriDuzenle.Visible = false;
            }
            //kategorileri dataliste çekme
            SqlCommand cmdkgetir = new SqlCommand("select * from Kategori", baglan.Baglan());
            SqlDataReader drkgetir = cmdkgetir.ExecuteReader();

            DataList1.DataSource = drkgetir;
            DataList1.DataBind();
        }

        protected void btn_ktgriEkle_Click(object sender, EventArgs e)
        {
            pnl_ktgriEkle.Visible = true;
        }

        protected void btn_ktgriSil_Click(object sender, EventArgs e)
        {
            pnl_ktgriEkle.Visible = false;
        }

        protected void btn_kategoriEkle_Click(object sender, EventArgs e)
        {
            if (fu_resim0.HasFile)
            {
               

                SqlCommand cmdktegoriekle = new SqlCommand("insert into Kategori (kategori_adi,kategori_sira,kategori_resim) Values('" + txtbx_ktgoriAdi.Text + "','" + txtbx_sira.Text + "','/kresim/" + fu_resim0.FileName + "')", baglan.Baglan());
                    cmdktegoriekle.ExecuteNonQuery();

                Response.Redirect("kategoriler.aspx");
                fu_resim0.SaveAs(Server.MapPath("/kresim/" + fu_resim0.FileName));

            }
            else
            {
                btn_kategoriEkle.Text = "Resim Ekle!";
            }
        }

        protected void btn_kdArti_Click(object sender, EventArgs e)
        {
            pnl_kategoriDuzenle.Visible = true;
        }

        protected void btn_kdEksi_Click(object sender, EventArgs e)
        {
            pnl_kategoriDuzenle.Visible = false;
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}