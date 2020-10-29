<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="kategoriler.aspx.cs" Inherits="WebApplication9.admin.kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        height: 30px;
    }
    .auto-style9 {
        font-size: large;
        color: white;
    }
    .auto-style11 {
        width: 244px;
    }
    .auto-style14 {
        width: 352px;
    }
    .auto-style15 {
        width: 694px;
        height: 222px;
    }
    .auto-style16 {
        border: 1px dotted #ef6161;
    }
        .auto-style17 {
            margin-right: 0;
        }
        .auto-style18 {
            width: 100%;
        }
        .auto-style19 {
            width: 473px;
        }
        .auto-style20 {
            width: 98px;
            text-decoration: underline;
        }
        .auto-style21 {
            width: 50px;
            height: 39px;
            margin-left: 11px;
        }
        .auto-style22 {
            width: 50px;
            height: 39px;
        }
        .auto-style23 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div>
        <div style="background-color:#c13eae; color:black; font-weight:bolder" class="auto-style6">&nbsp;
            <asp:Button ID="btn_ktgriEkle" runat="server" OnClick="btn_ktgriEkle_Click" Text="+" Width="20px" />
&nbsp;
            <asp:Button ID="btn_ktgriSil" runat="server" OnClick="btn_ktgriSil_Click" Text="-" Width="21px" />
&nbsp;<span class="auto-style9">Kategori Ekleme Paneli</span></div>
    
<asp:Panel ID="pnl_ktgriEkle" runat="server" BackColor="#CC99FF" Height="245px" Width="697px" CssClass="auto-style17">
    <table class="auto-style15">
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;Kategori Adı</strong>:</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtbx_ktgoriAdi" runat="server" CssClass="textboxGorsel" Height="25px" Width="152px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Sıra:</strong></td>
            <td class="auto-style14">
                <asp:TextBox ID="txtbx_sira" runat="server" CssClass="textboxGorsel" Height="25px" Width="153px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Resmi:</strong></td>
            <td class="auto-style14">
                <asp:FileUpload ID="fu_resim0" runat="server" CssClass="auto-style16" Height="25px" Width="234px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;</strong></td>
            <td class="auto-style14">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style14">
                <asp:Button ID="btn_kategoriEkle" runat="server" CssClass="butongorsel" Font-Bold="True" Height="29px" OnClick="btn_kategoriEkle_Click" Text="EKLE" Width="100px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style14">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
        </tr>
    </table>
</asp:Panel>
    
<div style="height:30px; background-color:#f7dede;"></div>
        
    <div style="background-color:#c13eae; color:black; font-weight:bolder" class="auto-style6">&nbsp;
            <asp:Button ID="btn_kdArti" runat="server"  Text="+" Width="20px" OnClick="btn_kdArti_Click" />
&nbsp;
            <asp:Button ID="btn_kdEksi" runat="server" Text="-" Width="21px" OnClick="btn_kdEksi_Click" />
&nbsp;<span class="auto-style9">Kategori Düzenleme Paneli</span></div>
            <div style="width:700px;height:auto;">

        <asp:Panel ID="pnl_kategoriDuzenle" runat="server" BackColor="#FFCCFF"  Width="700px" CssClass="auto-style17">

        <asp:DataList ID="DataList1" runat="server" Width="700px" Height="276px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged1" BackColor="#CC99FF">
            <HeaderTemplate>
                <table class="auto-style18">
                    <tr>
                        <td class="auto-style19" style="font-size: 18px;"><strong>KATEGORİ ADI</strong></td>
                        <td class="auto-style20" style="font-size: 18px;"><strong>GÜNCELLE</strong></td>
                        <td style="font-size: 18px;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style23">SİL</span></strong></td>
                    </tr>
                </table>
            </HeaderTemplate>
            <ItemTemplate>
                <table class="auto-style18">
                    <tr>
                        <td class="auto-style19" style="border-bottom-style: dashed; border-bottom-width: 2px; border-bottom-color: #990033">
                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("kategori_adi") %>'></asp:Literal>
                        </td>
                        <td class="auto-style20" style="border-bottom-style: dashed; border-bottom-width: 2px; border-bottom-color: #990033">
                            <a href="kategoriGuncelleme.aspx?kategori_id=<%# Eval("kategori_id") %>"><img alt="" class="auto-style21" src="../temalar/düzenle.png" /></a>
                        </td>
                        <td style="border-bottom-style: dashed; border-bottom-width: 2px; border-bottom-color: #990033">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href='kategoriler.aspx?kategori_id=<%# Eval("kategori_id") %>&amp;islem=sil'>
                            <img alt="" class="auto-style22" src="../temalar/sil2.png" />
                            &lt;</a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
            </asp:Panel></div>
<div style="height:30px; background-color:#f7dede;"></div>

        </div>








</asp:Content>

