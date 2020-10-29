<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="makaleler.aspx.cs" Inherits="WebApplication9.admin.makaleler" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 397px;
        }

        .auto-style3 {
            background-color: #b26da0;
            color: #fff;
            font-weight: bold;
            margin-top: 0;
        }

        .auto-style4 {
            height: 306px;
            width: 696px;
        }

        .auto-style5 {
            width: 113px;
            height: 10px;
        }

        .auto-style6 {
            height: 30px;
        }

        .auto-style7 {
            height: 10px;
        }

        .auto-style8 {
            width: 113px;
            height: 30px;
        }

        .auto-style9 {
            height: 36px;
            color: white;
        }

        .auto-style10 {
            border: 1px dotted #ef6161;
        }

        .auto-style12 {
            width: 100%;
        }

        .auto-style13 {
            width: 456px;
            height: 21px;
        }

        .auto-style14 {
            height: 21px;
        }

        .auto-style20 {
            width: 60px;
            height: 58px;
        }

        .auto-style21 {
            height: 21px;
            width: 136px;
        }

        .auto-style22 {
            margin-right: 2px;
        }

        .auto-style24 {
            width: 67px;
            height: 61px;
        }
    .auto-style25 {
        width: 275px;
    }
    .auto-style26 {
        height: 31px;
    }
    .auto-style27 {
        background-color: #b26da0;
        color: #fff;
        font-weight: bold;
    }
        .auto-style28 {
            height: 36px;
            font-size: large;
            color: white;
        }
        .auto-style29 {
            width: 113px;
        }
        .auto-style30 {
            text-decoration: underline;
        }
        .auto-style31 {
            width: 493px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style4">
        <div style="background-color: #c13eae; color: black; font-weight: bolder" class="auto-style6">
            &nbsp;
            <asp:Button ID="btn_makaleEkle" runat="server" Text="+" Width="20px" OnClick="btn_makaleEkle_Click" />
            &nbsp;
            <asp:Button ID="btn_makaleSil" runat="server" Text="-" Width="21px" OnClick="btn_makaleSil_Click" />
            &nbsp;<span class="auto-style28">Makale Ekleme Paneli</span>
        </div>

        <asp:Panel ID="pnl_makaleEkle" runat="server" BackColor="#CC99FF" Height="684px" Width="695px" Style="margin-right: 2">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style29" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style29" style="text-align: right"><strong>Kategori</strong>:</td>
                    <td>
                        <asp:DropDownList ID="ddl_kategori" runat="server" Height="30px" Width="200px" CssClass="textboxGorsel">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style29" style="text-align: right"><strong>Başlık</strong>:</td>
                    <td>
                        <asp:TextBox ID="txtbx_baslik" runat="server" CssClass="auto-style10" Height="30px" Width="500px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style29" style="text-align: right"><strong>Özet</strong>:</td>
                    <td>
                        <asp:TextBox ID="txtbx_özet" runat="server" Height="100px" TextMode="MultiLine" Width="500px" CssClass="textboxGorsel"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style29" style="text-align: right"><strong>İçerik</strong>:</td>
                    <td>
                      <CKEditor:CKEditorControl ID="ckeEd_icerik" runat="server" CssClass="textboxGorsel" >
                        </CKEditor:CKEditorControl>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style29" style="text-align: right"><strong>Slider</strong>:</td>
                    <td>
                        <asp:FileUpload ID="fu_slider" runat="server" CssClass="auto-style10" Height="30px" Width="500px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" style="text-align: right"></td>
                    <td class="auto-style6"><strong>
                        <asp:Button ID="btn_ekle0" runat="server" CssClass="auto-style3" Height="35px" Text="EKLE" Width="94px" OnClick="btn_ekle0_Click" />
                    </strong></td>
                </tr>
                <tr>
                    <td class="auto-style5" style="text-align: right"></td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <div style="height: 30px; background-color: #f7dede;"></div>

        <div style="background-color: #c13eae; color: black; font-weight: bolder" class="auto-style6">
            &nbsp;
            <asp:Button ID="btn_mdArti" runat="server" Text="+" Width="20px" OnClick="btn_mdArti_Click" />
            &nbsp;
            <asp:Button ID="btn_mdEksi" runat="server" Text="-" Width="21px" OnClick="btn_mdEksi_Click" />
            &nbsp;<span class="auto-style28">Makale Düzenleme Paneli</span>
        </div>
            <div style="width:700px;height:auto;">

        <asp:Panel ID="pnl_mDzenle" runat="server" BackColor="#CC99FF"  Width="695px" CssClass="auto-style22">
            <asp:DataList ID="dl_mduzenle" runat="server" Width="694px">
                <HeaderTemplate>
                    <table class="auto-style12">
                        <tr>
                            <td class="auto-style13" style="font-size: 18px;"><strong>MAKALE ADI</strong></td>
                            <td class="auto-style21" style="font-size: 18px;"><strong>GÜNCELLE</strong></td>
                            <td class="auto-style14" style="font-size: 18px;"><strong>&nbsp;&nbsp; <span class="auto-style30">SİL</span></strong></td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table class="auto-style12">
                        <tr>
                            <td class="auto-style13" style="border-bottom-style: dashed; border-bottom-width: 2px; border-bottom-color: #990033">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("makale_baslik") %>'></asp:Literal>
                                &nbsp;</td>
                            <td style="border-bottom-style: dashed; border-bottom-width: 2px; border-bottom-color: #990033">&nbsp;&nbsp;&nbsp;
                       <a href="makaleGuncelle.aspx?makale_id=<%#Eval("makale_id")%> ">
                           <img alt="" class="auto-style24" src="../temalar/düzenle.png" /></a>
                            </td>
                            <td style="border-bottom-style: dashed; border-bottom-width: 2px; border-bottom-color: #990033">&nbsp;&nbsp;&nbsp;
                        <a href="makaleler.aspx?makale_id=<%#Eval("makale_id")%>&islem=sil">
                            <img alt="" class="auto-style20" src="../temalar/sil2.png" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel></div>

        <div style="height: 30px; background-color: #f7dede;"></div>

        <div style="background-color: #c13eae; color: black; font-weight: bolder" class="auto-style6">
            &nbsp;
            <asp:Button ID="btn_mdosyaArti" runat="server" Text="+" Width="20px" OnClick="btn_mdosyaArti_Click" />
            &nbsp;
            <asp:Button ID="btn_mdosyaEksi" runat="server" Text="-" Width="21px" OnClick="btn_mdosyaEksi_Click"  />
            &nbsp;<span class="auto-style9">Makale Dosya Ekleme Paneli</span>
        </div>

        <asp:Panel ID="pnl_mdosya" runat="server" BackColor="#CC99FF" Height="150px" Width="695px" CssClass="auto-style22">
            <table class="auto-style12">
                <tr>
                    <td style="text-align: right" class="auto-style25">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25" style="text-align: right"><strong>Dosya Seç:</strong></td>
                    <td>
                        <asp:FileUpload ID="fu_mDosyaEkle" runat="server" CssClass="auto-style10" Height="30px" Width="301px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25" style="text-align: right">&nbsp;</td>
                    <td><strong>
                        <asp:Button ID="btn_mDosyaEkle" runat="server" CssClass="auto-style27" Height="30px" OnClick="btn_mDosyaEkle_Click" Text="EKLE" Width="100px" />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style25" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25" style="text-align: right"><strong>NOT:</strong></td>
                    <td>Ekle İşlemi /dosyalar/eklenendosya.uzantı şeklinde kullanılacak</td>
                </tr>
                <tr>
                    <td class="auto-style25" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <div style="background-color: #f7dede;" class="auto-style26"></div>

    </div>
</asp:Content>
