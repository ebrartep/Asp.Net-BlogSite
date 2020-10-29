<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="yorumcevap.aspx.cs" Inherits="WebApplication9.admin.yorumcevap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 170px;
        }
        .auto-style3 {
            background-color: #b26da0;
            width: 100px;
            height: 25px;
            color: #fff;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="background-color: #CC99FF">
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Admin:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textboxGorsel" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Yorum:</td>
            <td>
                <asp:TextBox ID="txtbx_yorumIcerik" runat="server" CssClass="textboxGorsel" Height="100px" TextMode="MultiLine" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td><strong>
                <asp:Button ID="btn_cevapYaz" runat="server" CssClass="auto-style3" Font-Bold="True" Font-Size="Medium" OnClick="btn_cevapYaz_Click" Text="Cevap Yaz" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
