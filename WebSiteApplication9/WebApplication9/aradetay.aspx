<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="aradetay.aspx.cs" Inherits="WebApplication9.aradetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style16 {
        height: 48px;
    }
    .auto-style17 {
        height: 19px;
    }
    .auto-style18 {
        height: 20px;
        width: 25px;
    }
    .auto-style19 {
        height: 20px;
    }
        .auto-style21 {
            height: 17px;
            width: 25px;
        }
        .auto-style13 {
            height: 281px;
        }
        .auto-style14 {
            height: 40px;
        width: 40px;
        float: left;
    }
        .auto-style17 {
            width: 687px;
            height: 134px;
            float: left;
        }
        .auto-style21 {
            width: 25px;
            height: 20px;
        }
        .auto-style23 {
            width: 27px;
            height: 20px;
        }
    
        .auto-style24 {
            height: 29px;
            width: 690px;
        }
    
        .auto-style26 {
            height: 42px;
        }
    
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="auto-style13" style="height: auto; width: 690px;background-color:#D67CC8">
        <asp:DataList runat="server" Width="690px" Height="136px" ID="dl_ara" >
            <ItemTemplate>
                <div style="margin:0 10px 0 0px;height:auto" class="auto-style17">
                    <div style="width: 40px; height: auto; float: left">
                        <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl='<%# Eval("kategori_resim") %>' Width="40px" />
                    
                    </div>
                    <div style=" line-height: 40px; background-image: url('temalar/mor menu.jpg');" class="auto-style26">
                       
                      <a href="makaledetay.aspx?makale_id=<%#Eval("makale_id") %>">  <asp:Label ID="Label1" runat="server" Font-Size="20px" Text='<%# Eval("makale_baslik") %>'></asp:Label></a>
                    </div>
                        <div style="border-style: dashed; border-width: 1px 1px 4px 1px; border-color: #CC3399; background-color: #FF99FF; display:inline-block; font-style: normal; font-variant: inherit; text-transform: capitalize; vertical-align: sub; white-space: inherit; height: auto; width: 690px; float: left">
                            <asp:Label ID="Label5" runat="server" Font-Size="18px" Text='<%# Eval("makale_ozet") %>'  Width="600px" ViewStateMode="Enabled"></asp:Label>
                        </div>
                     
                    <div style="line-height:20px;font-size:12px;background-color:#D885F8; " class="auto-style24" >

                        <div style="width:auto;float:left;height:20px;margin-left:15px;">
                            &nbsp;<img class="auto-style21" src="temalar/saat.png" /><asp:Label ID="Label2" runat="server" Text='<%# Eval("makale_tarih","{0:dd MMMM yyyy}") %>'></asp:Label>
                    </div>
                          <div style="width:auto;float:left;height:20px;margin-left:15px;margin-right:15px;">
                              <img class="auto-style23" src="temalar/göz.png" />
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("makale_okunmaSayisi") %>'></asp:Label>
                    </div>
                          <div style="width:auto;float:left;height:20px;margin-left:15px;margin-right:15px;">
                              <img class="auto-style21" src="temalar/yorum.png" />
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("makale_yorumSayisi") %>'></asp:Label>
                    </div>
                </div>
                        <div style="width:690px;float:left;height:20px;background-color:#f7dede"></div>


            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
