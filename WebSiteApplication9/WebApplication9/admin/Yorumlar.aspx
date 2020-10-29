<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="WebApplication9.admin.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 60px;
            float: right;
        }
        .auto-style4 {
            width: 38px;
            height: 22px;
        }
        .auto-style5 {
            width: 33px;
            height: 22px;
            margin-left: 0;
        }
        .auto-style7 {
            width: 35px;
            height: 22px;
        }
        .auto-style8 {
            float: right;
            width: 70px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div >

        <div style="background-color:#c13eae; color:#fff; font-weight:bolder" class="auto-style6">&nbsp;
            <asp:Button ID="btn_oyEkle" runat="server"  Text="+" Width="20px" OnClick="btn_oyEkle_Click" />
&nbsp;
            <asp:Button ID="btn_oySil" runat="server" Text="-" Width="21px" OnClick="btn_oySil_Click" />
&nbsp;<span class="auto-style9">Onaysız Yorum Paneli</span></div>
        <div style="width:700px;height:auto;">

<asp:Panel ID="pnl_onaysizYorum"  runat="server" CssClass="auto-style17">


        <asp:DataList ID="dl_yorumEkle" runat="server" Width="700px" OnSelectedIndexChanged="dl_yorumEkle_SelectedIndexChanged">
            <ItemTemplate>
                <div style="width: 690px; height: auto">
                    <div style="width: 100px; height: auto; float: left">
                        <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl='<%# Eval("yorum_resim") %>' Width="60px" />
                    </div>
                    <div style="width: 590px; height: auto; float: left">
                        <div style="width: 590px; height: 25px; float: left; background-color: #CD65BD;">
                            <asp:Label ID="Label1" runat="server" Font-Size="18px" Text='<%# Eval("yorum_adSoyad") %>' ForeColor="White"></asp:Label>
                            &nbsp;-
                            <asp:Label ID="Label2" runat="server" Font-Size="12px" Text='<%# Eval("yorum_email") %>' ForeColor="White"></asp:Label>
                            &nbsp;-
                            <asp:Label ID="Label3" runat="server" Font-Size="12px" Text='<%# Eval("yorum_tarih","{0:dd MMMM yyyy}") %>' ForeColor="White"></asp:Label>
                        </div>
                        <div style =" width:590px; height:25px; float:left; color: #FFFFFF; background-color: #D579C7;">
                            
                            Makale:&nbsp;&nbsp;
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("makale_baslik") %>' ForeColor="White"></asp:Label>
                            
                        </div>
                        <div style="width:590px;height:auto;float:left; background-color: #E2A5D9;">
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("yorum_icerik") %>' ForeColor="White"></asp:Label>
                        </div>
                        <div style="width:590px;height:25px;float:left;">
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style2" style="float: left">
                                        <a href ="YorumGuncelle.aspx?yorum_id=<%#Eval("yorum_id") %>&makale_id=<%#Eval("makale_id") %>">  <img alt="" class="auto-style5" src="../temalar/duzenle3.png" /></a>

                                    </td> 
                                    <td class="auto-style8" style="float: left">
                                        <a href ="Yorumlar.aspx?yorum_id=<%#Eval("yorum_id") %>&islem=sil"><img alt="" class="auto-style4" src="../temalar/sil2.png" /> </a>
                                    </td>
                                    <td style="float: left">
                                       <a href ="yorumcevap.aspx?makale_id=<%#Eval("makale_id") %>&islem=sil"> <img alt="" class="auto-style7" src="../temalar/cevap.png" /> </a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        
                        
                    </div>
                                    <div style="width:690px;height:30px;">
</div>
                </div>
 


            </ItemTemplate>
        </asp:DataList>


    </asp:Panel></div>



    </div>
            <div style="height:30px; background-color:#f7dede;"></div>


      <div style="background-color:#c13eae; color:#fff; font-weight:bolder" class="auto-style6">&nbsp;
            <asp:Button ID="btn_ooArti" runat="server"  Text="+" Width="20px" OnClick="btn_ooArti_Click" />
&nbsp;
            <asp:Button ID="btn_ooEksi" runat="server" Text="-" Width="21px" OnClick="btn_ooEksi_Click"  />
&nbsp;<span class="auto-style9">Onaylı Yorum Paneli</span></div>
        <div style="width:700px;height:auto;">

<asp:Panel ID="pnl_yorumOnayli" runat="server" CssClass="auto-style17">


        <asp:DataList ID="dl_onaylanan" runat="server" Width="700px" OnSelectedIndexChanged="dl_yorumEkle_SelectedIndexChanged">
            <ItemTemplate>
                <div style="width: 690px; height: auto">
                    <div style="width: 100px; height: auto; float: left">
                        <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl='<%# Eval("yorum_resim") %>' Width="60px" />
                    </div>
                    <div style="width: 590px; height: auto; float: left">
                        <div style="width: 590px; height: 25px; float: left; background-color: #CD65BD;">
                            <asp:Label ID="Label1" runat="server" Font-Size="18px" Text='<%# Eval("yorum_adSoyad") %>' ForeColor="White"></asp:Label>
                            &nbsp;-
                            <asp:Label ID="Label2" runat="server" Font-Size="12px" Text='<%# Eval("yorum_email") %>' ForeColor="White"></asp:Label>
                            &nbsp;-
                            <asp:Label ID="Label3" runat="server" Font-Size="12px" Text='<%# Eval("yorum_tarih","{0:dd MMMM yyyy}") %>' ForeColor="White"></asp:Label>
                        </div>
                        <div style =" width:590px; height:25px; float:left; color: #FFFFFF; background-color: #D579C7;">
                            
                            Makale:&nbsp;&nbsp;
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("makale_baslik") %>' ForeColor="White"></asp:Label>
                            
                        </div>
                        <div style="width:590px;height:auto;float:left; background-color: #E2A5D9;">
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("yorum_icerik") %>' ForeColor="White"></asp:Label>
                        </div>
                        <div style="width:590px;height:25px;float:left;">
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style2" style="float: left">
                                       <a href="YorumGuncelle.aspx?yorum_id=<%#Eval("yorum_id") %>&makale_id=<%#Eval("makale_id") %>"> <img alt="" class="auto-style4" src="../temalar/sil2.png" /></a>
                                    </td>
                                    <td class="auto-style8" style="float: left">
                                        &nbsp;</td>
                                    <td style="float: left">
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </div>
                        
                        
                    </div>
                                    <div style="width:690px;height:30px;">
</div>
                </div>
 


            </ItemTemplate>
        </asp:DataList>


    </asp:Panel></div>
        <div style="height:30px; background-color:#f7dede;"></div>

</asp:Content>
