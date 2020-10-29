<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="makaleGuncelle.aspx.cs" Inherits="WebApplication9.admin.makaleGuncelle" %>
<%@ Register assembly="CKEditor.NET" namespace="CKEditor.NET" tagprefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 194px;
        height: 21px;
    }
    .auto-style3 {
        height: 21px;
    }
    .auto-style5 {
        border: 1px dotted #ef6161;
    }
    .auto-style6 {
        background-color: #b26da0;
        color: #fff;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<table class="auto-style1" style="text-align: right; background-color: #CC99FF">
    <tr>
        <td class="auto-style2" style="text-align: right; background-color: #CC99FF;"></td>
        <td class="auto-style3" style="text-align: left"></td>
    </tr>
    <tr>
        <td class="auto-style2" style="text-align: right"><strong>Başlık:</strong></td>
        <td class="auto-style3" style="text-align: left">
            <asp:TextBox ID="txtbx_mbaslik" runat="server" CssClass="auto-style5" Height="25px" Width="470px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" style="text-align: right"><strong>Özet:</strong></td>
        <td class="auto-style3" style="text-align: left">
            <asp:TextBox ID="txtbx_mozet" runat="server" CssClass="auto-style5" Height="100px" TextMode="MultiLine" Width="470px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" style="text-align: right"><strong>İçerik:</strong></td>
        <td class="auto-style3" style="text-align: left">
            <CKEditor:CKEditorControl ID="cke_micerik" runat="server" CssClass="textboxGorsel" Width="470px">
            </CKEditor:CKEditorControl>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" style="text-align: right"><strong>Slider:</strong></td>
        <td class="auto-style3" style="text-align: left">
            <asp:FileUpload ID="fu_mslider" runat="server" CssClass="auto-style5" Height="25px" Width="470px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2" style="text-align: right"><strong>Yorum Sayısı:</strong></td>
        <td class="auto-style3" style="text-align: left">
            <asp:TextBox ID="txtbx_myorumSayisi" runat="server" CssClass="auto-style5" Height="25px" Width="167px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" style="text-align: right">&nbsp;</td>
        <td class="auto-style3" style="text-align: left">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" style="text-align: right">&nbsp;</td>
        <td class="auto-style3" style="text-align: left"><strong>
            <asp:Button ID="btn_mGuncelle" runat="server" CssClass="auto-style6" Height="30px" OnClick="btn_mGuncelle_Click" Text="GÜNCELLE" Width="120px" />
            </strong></td>
    </tr>
</table>
</asp:Content>
