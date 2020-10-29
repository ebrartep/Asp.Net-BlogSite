<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="duyuruGuncelle.aspx.cs" Inherits="WebApplication9.admin.duyuruGuncelle" %>
<%@ Register assembly="CKEditor.NET" namespace="CKEditor.NET" tagprefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 175px;
        }
        .auto-style4 {
            border: 1px dotted #ef6161;
        }
        .auto-style5 {
            background-color: #b26da0;
            color: #fff;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="background-color: #CC99FF">&nbsp;</td>
            <td style="background-color: #CC99FF">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #CC99FF; text-align: right;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Başlık:&nbsp;</strong></td>
            <td style="background-color: #CC99FF">
                <asp:TextBox ID="txtbx_dbaslik" runat="server" CssClass="auto-style4" Height="30px" Width="470px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #CC99FF; text-align: right;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; İçerik:</strong></td>
            <td style="background-color: #CC99FF">
                <CKEditor:CKEditorControl ID="cke_duyuruGunicerik" runat="server" CssClass="textboxGorsel" Width="470px">
                </CKEditor:CKEditorControl>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #CC99FF">&nbsp;</td>
            <td style="background-color: #CC99FF">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #CC99FF">&nbsp;</td>
            <td style="background-color: #CC99FF"><strong>
                <asp:Button ID="btn_guncelle" runat="server" CssClass="auto-style5" Height="35px" OnClick="btn_guncelle_Click" Text="GÜNCELLE" Width="110px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
