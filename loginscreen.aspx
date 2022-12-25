<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginscreen.aspx.cs" Inherits="depostockyonetimi.loginscreen" %>


<!DOCTYPE html>

<head runat="server">
    <title></title>
    <link href="style/login.css" rel="stylesheet" />
</head>
<body>
  
    <div class="frmlogin">
        <br />
      
        <h1>Giriş Yapınız</h1>
        <form id="form1" runat="server">
            <asp:TextBox ID="txtUserName" runat="server" placeholder="Kullanıcı Adı"  ></asp:TextBox>
            <asp:TextBox ID="txtPassword" runat="server" placeholder="Şifre"  TextMode="Password"></asp:TextBox>
            <asp:RadioButton ID="adminLog" GroupName ="girissecenegi" Text="Yönetici Girişi" runat="server" />
            <asp:RadioButton ID="calisanlog" GroupName ="girissecenegi" Text="Çalışan Girişi" runat="server" />
            <asp:RadioButton ID="musterilog" GroupName ="girissecenegi" Text="Müşteri Girişi" runat="server" />
            <asp:Button ID="btnLogin" runat="server"  Text="Giriş Yap" CssClass ="btn" OnClick="btnLogin_Click"/>
            <br />
            <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>
           
        </form>
        
    </div>

</body>
</html>
