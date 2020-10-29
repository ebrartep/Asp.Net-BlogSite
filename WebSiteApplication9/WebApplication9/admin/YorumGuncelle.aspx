<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="YorumGuncelle.aspx.cs" Inherits="WebApplication9.admin.YorumGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 200px;
        }
        .auto-style4 {
            width: 200px;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            background-color: #b26da0;
            width: 100px;
            height: 25px;
            color: #fff;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id="tablo" class="auto-style1"   style="background-color: #CC99FF">
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Yorum Yapan Kişi:</td>
            <td>
                <asp:TextBox ID="txtbx_Kisi" runat="server" CssClass="textboxGorsel" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Yorum:</td>
            <td>
                <asp:TextBox ID="txtbx_yorum" runat="server" CssClass="textboxGorsel" Height="100px" TextMode="MultiLine" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" style="text-align: right">Onay:</td>
            <td class="auto-style5">
                <asp:CheckBox ID="checbx_onay" runat="server" Text="Onayla" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td><strong>
                <asp:Button ID="btn_gnclle" runat="server" CssClass="auto-style6" OnClick="btn_gnclle_Click" Text="GÜNCELLE" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
