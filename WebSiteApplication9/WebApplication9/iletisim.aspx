<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="WebApplication9.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            background-color: #b26da0;
            width: 100px;
            height: 25px;
            color: #fff;
            font-weight: bold;
        }
        .auto-style14 {
            width: 34px;
        }
        .auto-style15 {
            width: 39px;
            height: 42px;
        }
        .auto-style16 {
            width: 36px;
            height: 40px;
        }
        .auto-style19 {
            width: 40px;
            height: 40px;
            float: left;
            margin-top: 5px;
        }
        .auto-style20 {
            width: 40px;
            height: 40px;
        }
        .auto-style21 {
            width: 106%;
            height: 40px;
            float: left;
        }
        .auto-style22 {
            width: 34px;
            height: 21px;
            border: 1px dotted #c13eae;
        }
        .auto-style23 {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
            <div style="height:auto;width:100%">

    <div style="background-color:#c13eae;color:#fff; height:30px;width:100%;text-align:center;font-size:24px;font-weight:bolder"
         >Mesaj Gönder</div>
    <div style="height:10px;width:100%"></div>
    <div style="height:200px">

        <div style="width: 335px; height: 200px; float: left; border: 1px dashed #c13eae;margin-left:5px;"> 
            <asp:TextBox ID="txtbx_yorumIcerik" placeHolder="Buraya Mesajınızı Yazınız " runat="server" Height="200px" TextMode="MultiLine" Width="335px"></asp:TextBox>
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
                        <asp:Button ID="btn_mesajEkle" runat="server" CssClass="auto-style13" Height="35px"  Text="GÖNDER" Width="84px" OnClick="btn_mesajEkle_Click" />
                        </strong></td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtbx_yorumIcerik" ErrorMessage="Mesaj Yazınız!!!" ForeColor="#990000"></asp:RequiredFieldValidator>
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
      <div style=" height:auto;width:100%;float:left ;font-size:15px;font-weight:bolder" >

        <table class="auto-style9">
            <tr>
                <td class="auto-style22"></td>
                <td class="auto-style23"></td>
            </tr>
            <tr>
                <td class="auto-style14">
                    &nbsp;<img alt="" class="auto-style21" src="temalar/facebook.png" width="40px" /></td>
                <td style="color: #5B5B5B; font-style: italic">facebook.com/blogsite</td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <img alt="" class="auto-style19" src="temalar/twitter.png" /></td>
                <td style="color: #5B5B5B; font-style: italic">twitter.com/blogsite</td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <img alt="" class="auto-style20" src="temalar/instagram.png" /></td>
                <td style="color: #5B5B5B; font-style: italic">instagram.com/blogsite</td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <img alt="" class="auto-style20" src="temalar/youtube.png" /></td>
                <td style="color: #5B5B5B; font-style: italic">youtube.com/blogsite</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
       

    </div>
</asp:Content>
