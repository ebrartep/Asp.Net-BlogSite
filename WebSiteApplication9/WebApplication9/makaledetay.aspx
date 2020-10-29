<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="makaledetay.aspx.cs" Inherits="WebApplication9.makaledetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
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
            height: 138px;
            float: left;
        }
        .auto-style19 {
            width: 630px;
            height: 27px;
            top: 10px;
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
        .auto-style25 {
            float: left;
            height: auto;
            width: 635px;
        }
        .auto-style27 {
            width: 700px;
            float: left;
            height: 35px;
        }
        .auto-style28 {
        width: 637px;
        float: left;
        height: 9px;
    }
         .auto-style29 {
             text-decoration: underline;
             height: 21px;
         }
         .auto-style30 {
             background-color: #b26da0;
             width: 100px;
             height: 25px;
             color: #fff;
             font-weight: bold;
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
        <asp:DataList runat="server" Width="690px" Height="136px" ID="dl_makale" >
            <ItemTemplate>
                <div style="margin:0 10px 0 0px;height:auto" class="auto-style17">
                    <div style="width: 40px; height: auto; float: left">
                        <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl='<%# Eval("kategori_resim") %>' Width="40px" />
                    
                    </div>
                    <div style=" line-height: 40px; background-image: url('temalar/mor menu.jpg');" class="auto-style26">
                        
                       <asp:Label ID="Label1" runat="server" Font-Size="20px" Text='<%# Eval("makale_baslik") %>'></asp:Label></a>
                    </div>
                        <div style="border-style: dashed; border-width: 1px 1px 4px 1px; border-color: #CC3399; background-color: #FF99FF; display:inline-block; font-style: normal; font-variant: inherit; text-transform: capitalize; vertical-align: sub; white-space: inherit; height: auto; width: 690px; float: left">
                            <asp:Label ID="Label5" runat="server" Font-Size="18px" Text='<%# Eval("makale_icerik") %>'  Width="600px" ViewStateMode="Enabled"></asp:Label>
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


    <div style="height:40px;width:100%;"></div>
     <div style="background-color:#c13eae;color:#fff; height:30px;width:100%;text-align:center;font-size:24px;font-weight:bolder"
         >Makaleye Yapılan Yorumlar </div>
    <div style="height:10px;width:100%"></div>
    <div style ="width:690px;height:auto;margin:0 auto;">


        <asp:DataList ID="dl_yorumGetir" runat="server" Width="690px">
            <ItemTemplate>
                <div style="width: 690px; height: auto; float: left; border-bottom-style: dotted; border-bottom-width: 1px; border-bottom-color: #c13eae;">


                    <div style="border-color: #c13eae; float: left; width: 50px; height: 60px; border-style: dotted; border-width: 1px;">
                        <asp:Image ID="Image4" runat="server" Height="60px" ImageUrl='<%# Eval("yorum_resim") %>' Width="50px" />
                    </div>


                    <div style="float: left; height: auto; width: 630px">
                        <div style="float: left; width: 630px; height: 25px; background-color: #D277C5;">

                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("yorum_adSoyad") %>' Font-Size="18px" ForeColor="White"></asp:Label>&nbsp; --
                            <asp:Label ID="Label7" runat="server" Font-Size="12px" ForeColor="White" Text='<%# Eval("yorum_tarih","{0:dd MMMM yyyy}") %>'></asp:Label>
                        </div>

                        <div style="float:left; width:630px;height:auto; background-color: #E1A2D8;">

                            &nbsp;&nbsp;&nbsp;

                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("yorum_icerik") %>' ForeColor="White"></asp:Label>
                        </div>


                    </div>


                </div>
                <div style="float: left; width: 690px; height: 20px">
                </div>
            </ItemTemplate>
        </asp:DataList>


    </div>





    <div style="height:40px;width:100%;"></div>

     <div style="background-color:#c13eae;color:#fff; height:30px;width:100%;text-align:center;font-size:24px;font-weight:bolder"
         >Yorum Yap</div>
    <div style="height:10px;width:100%"></div>
    <div style="height:200px">

        <div style="width: 335px; height: 200px; float: left; border: 1px dashed #c13eae;margin-left:5px;"> 
            <asp:TextBox ID="txtbx_yorumIcerik" placeHolder="Buraya Yorumunuzu Giriniz" runat="server" Height="200px" TextMode="MultiLine" Width="335px"></asp:TextBox>
        </div>
        <div style="border: 1px dashed #c13eae; margin-right:5px;float:right;width:335px;height:200px;"> 
            <table class="auto-style9">
                <tr>
                    <td style="text-align: center">

                        <strong>
                        <asp:TextBox ID="txt_AdSoyad" runat="server" placeHolder="Adınız Soyadınız" CssClass="textboxGorsel" Height="30px" Width="300px"></asp:TextBox>
                  </strong> 

                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <strong>
                        <asp:TextBox ID="txt_email" runat="server" placeHolder="Email Adresiniz" CssClass="textboxGorsel" Height="30px" Width="300px"></asp:TextBox>
                        </strong>

                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="lbl_bilgi" runat="server" ForeColor="#990033"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style29" style="text-align: center"><strong>
                        <asp:Button ID="btn_yorumEkle" runat="server" CssClass="auto-style30" Height="35px" OnClick="Button1_Click" Text="GÖNDER" Width="84px" />
                        </strong></td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtbx_yorumIcerik" ErrorMessage="Yorum Yazınız!!!" ForeColor="#990000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_AdSoyad" ForeColor="#990000">Adınız Soyadınız!!!</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_email" ErrorMessage="RequiredFieldValidator" ForeColor="#990000">E-mail Adresiniz!!!</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="RegularExpressionValidator" ForeColor="Maroon" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Hatalı Mail!!!</asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
        </div>
           

        </div>


<div style ="height:10px;width:100%;"></div>
                
        

    
    
</asp:Content>
