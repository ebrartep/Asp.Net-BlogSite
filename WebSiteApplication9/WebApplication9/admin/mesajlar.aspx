<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="mesajlar.aspx.cs" Inherits="WebApplication9.admin.mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 200px;
        }
        .auto-style3 {
            width: 100px;
        }
        .auto-style4 {
            width: 25px;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



     
    <div style="background-color:#c13eae; color:#ffffff; font-weight:bolder; font-size: large;" class="auto-style6">&nbsp;
            <asp:Button ID="btn_mArti" runat="server"  Text="+" Width="20px" OnClick="btn_mArti_Click"  />
&nbsp;
            <asp:Button ID="btn_mEksi" runat="server"  Text="-" Width="21px" OnClick="btn_mEksi_Click"  />
&nbsp;<span class="auto-style11"> Mesaj Paneli</span></div>
        <div style="width:700px;height:auto;">

<asp:Panel ID="pnl_mesaj" runat="server" BackColor="#D579C7"  Width="700px" CssClass="auto-style17">
    <asp:DataList ID="dl_mesajGoster" runat="server" Width="700px ">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="#FF3300" Text='<%# Eval("iletisim_adSoyad") %>'></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Font-Size="12px" Text='<%# Eval("iletisim_email") %>' ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Font-Size="12px" Text='<%# Eval("iletisim_tarih","{0:dd MMMM yyyy}") %>' ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style3" style="text-align: right">
                       <a href="mesajlar.aspx?iletisim_id=<%#Eval("iletisim_id") %>&islem=sil"> <img alt="" class="auto-style4" src="../temalar/sil3.png" style="text-align: right" /> </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("iletisim_icerik") %>' ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" style="border-bottom-style: dashed; border-bottom-width: 2px; border-bottom-color: #990033">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Panel></div>
        <div style="height:30px; background-color:#f7dede;"></div>
</asp:Content>
