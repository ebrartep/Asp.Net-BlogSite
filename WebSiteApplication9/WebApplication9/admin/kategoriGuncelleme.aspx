<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="kategoriGuncelleme.aspx.cs" Inherits="WebApplication9.admin.kategoriGuncelleme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 367px;
        }
        .auto-style3 {
            border: 1px dotted #ef6161;
        }
        .auto-style4 {
            background-color: #b26da0;
            width: 100px;
            height: 25px;
            color: #fff;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="background-color: #CC99FF; text-align: right;">&nbsp;</td>
            <td style="background-color: #CC99FF; text-align: left;">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #CC99FF; text-align: right;"><strong>Kategori</strong> <strong>Adı:</strong> </td>
            <td style="background-color: #CC99FF; text-align: left;">
                <asp:TextBox ID="txt_kadi" runat="server" CssClass="auto-style3" Height="30px" Width="140px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #CC99FF; text-align: right;"><strong>Sırası: </strong></td>
            <td style="background-color: #CC99FF; text-align: left;">
                <asp:TextBox ID="txt_ksirasi" runat="server" CssClass="auto-style3" Height="30px" Width="141px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #CC99FF; text-align: right;"><strong>Adet:</strong></td>
            <td style="background-color: #CC99FF; text-align: left;">
                <asp:TextBox ID="txt_kadet" runat="server" CssClass="auto-style3" Height="30px" Width="143px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #CC99FF; text-align: right;"><strong>Resmi:</strong></td>
            <td style="background-color: #CC99FF; text-align: left;">
                <asp:FileUpload ID="fu_kresim" runat="server" CssClass="auto-style3" Height="30px" Width="300px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #CC99FF; text-align: right;">&nbsp;</td>
            <td style="background-color: #CC99FF; text-align: left;">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #CC99FF; text-align: right;">&nbsp;</td>
            <td style="background-color: #CC99FF; text-align: left;"><strong>
                <asp:Button ID="btn_guncelle" runat="server" CssClass="auto-style4" OnClick="btn_guncelle_Click" Text="GÜNCELLE" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
