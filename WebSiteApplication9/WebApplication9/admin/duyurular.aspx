<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="duyurular.aspx.cs" Inherits="WebApplication9.admin.duyurular" %>
<%@ Register assembly="CKEditor.NET" namespace="CKEditor.NET" tagprefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            background-color: #b26da0;
            width: 100px;
            height: 25px;
            color: #fff;
            font-weight: bold;
        }
        .auto-style4 {
            border: 1px dotted #ef6161;
            margin-left: 0;
        }
        .auto-style5 {
            width: 186px;
        }
        .auto-style6 {
            background-color: #CC99FF;
        }
        .auto-style7 {
            width: 400px;
        }
        .auto-style8 {
            width: 151px;
            text-decoration: underline;
        }
        .auto-style10 {
            width: 68px;
            height: 61px;
        }
        .auto-style11 {
            width: 512px;
            color: white;
            font-size: large;
        }
        .auto-style12 {
            color: white;
        }
        .auto-style13 {
            background-color: #CC99FF;
            text-decoration: underline;
        }
        .auto-style14 {
            text-decoration: underline;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <div style="background-color:#c13eae; color:black; font-weight:bolder" class="auto-style6">&nbsp;
            <asp:Button ID="btn_duyuruEkleArti" runat="server"  Text="+" Width="20px" OnClick="btn_duyuruEkleArti_Click" />
&nbsp;
            <asp:Button ID="btn_duyuruEksi" runat="server"  Text="-" Width="21px" OnClick="btn_duyuruEksi_Click" />
&nbsp;<span class="auto-style11">Duyuru Ekleme Paneli</span></div>
    
<asp:Panel ID="pnl_duyuruEkle" runat="server" BackColor="#CC99FF" Height="500px" Width="700px" CssClass="auto-style17">
    <table class="auto-style1">
        <tr>
            <td style="text-align: right" class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" style="text-align: right"><strong>Başlık:</strong></td>
            <td><strong>
                <asp:TextBox ID="txtbx_duyuruBaslik" runat="server" CssClass="auto-style4" Height="30px" Width="450px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style5" style="text-align: right"><strong>İçerik:</strong></td>
            <td><strong></strong>
                <CKEditor:CKEditorControl ID="cke_duyuruİcerik" runat="server" CssClass="textboxGorsel" Width="450px">
                </CKEditor:CKEditorControl>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="text-align: right"><strong></strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" style="text-align: right">&nbsp;</td>
            <td><strong>
                <asp:Button ID="btn_duyuruEkle" runat="server" CssClass="auto-style3" Height="30px" OnClick="btn_duyuruEkle_Click" Text="EKLE" Width="80px" />
                </strong></td>
        </tr>
    </table>
</asp:Panel>
        <div style="height:30px; background-color:#f7dede;"></div>

         <div style="background-color:#c13eae; color:black; font-weight:bolder" class="auto-style6"><span class="auto-style12">&nbsp;
            </span>
            <asp:Button ID="btn_dDuzenleArti" runat="server"  Text="+" Width="20px" OnClick="btn_dDuzenleArti_Click" />
&nbsp;
            <asp:Button ID="btn_dDuzenleEksi" runat="server"  Text="-" Width="21px" OnClick="btn_dDuzenleEksi_Click"  />
&nbsp;<span class="auto-style11">Duyuru Düzenleme Paneli</span></div>
    <div style="width:700px;height:auto;">
<asp:Panel ID="pnl_duyuruDuzenle" runat="server" BackColor="#CC99FF"  Width="700px" CssClass="auto-style17">
    <asp:DataList ID="dl_duyuruGetir" runat="server" Width="692px">
        <HeaderTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7" style="font-size: 18px"><span class="auto-style13"><strong style="font-size: 20px">DUYURU BAŞLIK</strong></span></td>
                    <td class="auto-style8" style="font-size: 18px"><strong>GÜNCELLE</strong></td>
                    <td class="auto-style14" style="font-size: 18px"><strong>SİL</strong></td>
                </tr>
            </table>
        </HeaderTemplate>
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7" style="border-bottom-style: dashed; border-bottom-width: 2px; border-bottom-color: #990033" >
                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("duyurular_baslik") %>'></asp:Literal>
                    </td>
                    <td style="border-bottom-style: dashed; border-bottom-width: 2px; border-bottom-color: #990033" >
                        <a href="duyuruGuncelle.aspx?duyurular_id=<%# Eval("duyurular_id") %>"><img alt="" class="auto-style10" src="../temalar/düzenle.png" />
                    </a></td>
                    <td style="border-bottom-style: dashed; border-bottom-width: 2px; border-bottom-color: #990033">
                           <a href="duyurular.aspx?duyurular_id=<%# Eval("duyurular_id") %>&islem=sil"> <img alt="" class="auto-style10" src="../temalar/sil2.png" /></a>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>

    </asp:Panel></div>
    <div style="height:30px; background-color:#f7dede;"></div>

    </div>
</asp:Content>
