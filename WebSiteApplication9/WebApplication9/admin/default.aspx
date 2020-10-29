<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication9.admin._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        *{
        border-style: none;
            border-color: inherit;
            border-width: 0;
            padding: 0;
            margin-right: 0;
            margin-top: 0;
            margin-bottom: 0;
        }
        .auto-style1 {
            color: #800000;
        }
        .auto-style2 {
            font-weight: bold;
        }
        .auto-style3 {
            text-decoration: underline;
        }
    </style>
     
    
    
</head>
<body style="background-color:#faebeb">

    <form id="form1" runat="server">
      
        <div style="height: 100px;background-color:#f5a8a8">
            <div class="auto-style1" style="font-size: x-large; font-style: italic; font-weight: bold; border: 1px dotted #000000; text-align: center; background-color: #F8C0C0;">Yönetici Paneli</div>
            <div style="float:left;width:250px;margin-top:20px;"><span class="auto-style3"><strong>Kullanıcı Adı:</strong></span><asp:TextBox ID="txtbox_kulAd" runat="server" Height="25px" Width="123px"></asp:TextBox></div>
            <div style="float:left;width:210px;margin-top:20px;margin-left:20px;"><span class="auto-style3"><strong>Şifre:</strong></span><asp:TextBox ID="txtbox_sifre" runat="server" Height="25px" TextMode="Password"></asp:TextBox></div>
            <div style="float:left;width:250px;margin-top:20px;margin-left:20px;">
                <strong>
                <asp:Button ID="btn_giris" runat="server" Text="GİRİŞ" Height="25px" Width="104px" BackColor="White" BorderStyle="Groove" ForeColor="Black" OnClick="btn_giris_Click" CssClass="auto-style2"/>
                   
          
                </strong>
                   
          
            </div>
        </div>

        <div style="background-color:#f5a8a8; text-align: right;"><strong><em>
            <asp:Label ID="lbl_bilgi" runat="server" Font-Size="18px"></asp:Label>
            </em></strong></div>

    </form>
        </body>
</html>
