<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="uyeGirisi.aspx.cs" Inherits="WebApplication9.uyeGirisi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style18 {
            width: 274px;
        }
        .auto-style19 {
            background-color: #b26da0;
            width: 100px;
            height: 25px;
            color: #fff;
            font-weight: bold;
        }
        .auto-style20 {
            width: 100%;
            height: 157px;
        }
        .auto-style22 {
            height: 18px;
        }
        .auto-style23 {
            width: 338px;
            height: 40px;
            float: left;
        }
        .auto-style24 {
            height: 43px;
        }
        .auto-style25 {
            width: 338px;
        }
        .auto-style26 {
            text-decoration: underline;
            color: #CC0066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style20" style="background-color: #CC99FF">
        <tr>
            <td class="auto-style22" style="font-style: italic; font-size: 15px; color: #FFFFFF;" colspan="2"><strong style="font-size: large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style26">ÜYE GİRİŞİ:</span></strong></td>
        </tr>
        <tr>
            <td class="auto-style25" style="font-style: italic; font-size: 15px; color: #FFFFFF;"><strong>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Kullanıcı Adı:" Font-Size="Medium"></asp:Label>
                </strong></td>
            <td class="auto-style24">
                <asp:TextBox ID="txt_kullaniciAdi" runat="server" CssClass="auto-style14" Height="25px" Width="170px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style25" style="font-style: italic; font-size: 15px; color: #FFFFFF;"><strong>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Şifre:" Font-Size="Medium"></asp:Label>
                </strong></td>
            <td>
                <asp:TextBox ID="txt_sifre" runat="server" CssClass="auto-style14" Height="25px" TextMode="Password" Width="170px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style23" style="font-style: italic; font-size: 15px; color: #FFFFFF;">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23" style="font-style: italic; font-size: 15px; color: #FFFFFF;">&nbsp;</td>
            <td><strong>
                <asp:Button ID="btn_uyeGiris" runat="server" CssClass="auto-style19" OnClick="btn_uyeGiris_Click" Text="GİRİŞ" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style25" style="font-style: italic; font-size: 15px; color: #FFFFFF;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_uyarı" runat="server" Font-Size="Large"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
