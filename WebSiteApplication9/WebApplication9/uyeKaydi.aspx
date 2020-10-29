<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="uyeKaydi.aspx.cs" Inherits="WebApplication9.uyeKaydi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
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
        .auto-style25 {
            width: 100%;
            height: 371px;
        }
        .auto-style27 {
            height: 21px;
        }
        .auto-style28 {
            height: 21px;
            width: 332px;
        }
        .auto-style29 {
            width: 332px;
        }
        .auto-style30 {
            background-color: #b26da0;
            width: 100px;
            height: 25px;
            color: #fff;
            font-weight: bold;
        }
        .auto-style31 {
            border: 1px dotted #c13eae;
        }
        .auto-style32 {
            text-align: center;
            text-decoration: underline;
            color: #CC0066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
 
        
        <table class="auto-style25" style="background-color: #CC99FF"  >
            <tr>
                <td colspan="2" style="font-size: medium; font-style: italic;" class="auto-style32"><strong style="font-size: large"><em>ÜYE KAYIT FORMU&nbsp;</em></strong></td>
            </tr>
            <tr>
                <td class="auto-style28" style="font-size: medium; font-style: italic; color: #FFFFFF;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Adı:" Font-Italic="True" Font-Size="Medium" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style27">
                    <asp:TextBox ID="txt_adi" runat="server" CssClass="auto-style31" Height="30px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-size: medium; font-style: italic; color: #FFFFFF;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="Soyadı:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_soyadi" runat="server" CssClass="auto-style31" Height="30px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-size: medium; font-style: italic; color: #FFFFFF;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Yaş:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_yasi" runat="server" CssClass="auto-style31" Height="29px" TextMode="Number" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-size: medium; font-style: italic; color: #FFFFFF;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text="Adres:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_adres" runat="server" CssClass="auto-style31" Height="80px" TextMode="MultiLine" Width="291px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-size: medium; font-style: italic; color: #FFFFFF;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Text="Telefon:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_telefon" runat="server" CssClass="auto-style31" Height="30px" TextMode="Phone" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-size: medium; font-style: italic; color: #FFFFFF;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Text="Kullanıcı Adı:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_uyeAdi" runat="server" CssClass="auto-style31" Height="30px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-size: medium; font-style: italic; color: #FFFFFF;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" Text="Şifre:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_sifre" runat="server" CssClass="auto-style31" Height="30px" TextMode="Password" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-size: medium; font-style: italic; color: #FFFFFF;">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-size: medium; font-style: italic; color: #FFFFFF;">&nbsp;</td>
                <td><strong>
                    <asp:Button ID="btn_kaydet" runat="server" CssClass="auto-style30" Text="KAYDET" OnClick="btn_kaydet_Click" />
                    </strong>&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                    <asp:Button ID="btn_temizle" runat="server" CssClass="auto-style30" Text="TEMİZLE" OnClick="btn_temizle_Click1" />
                    </strong>&nbsp;&nbsp;&nbsp; <strong>
                    <asp:Button ID="btn_uyeGirisi" runat="server" CssClass="auto-style30" Text="UYE GİRİSİ" OnClick="btn_uyeGirisi_Click" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-size: medium; font-style: italic; color: #FFFFFF;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbl_bilgi" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-size: medium; font-style: italic; color: #FFFFFF;">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
 
        
    </div>
</asp:Content>
