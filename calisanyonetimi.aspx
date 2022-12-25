<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calisanyonetimi.aspx.cs" Inherits="depostockyonetimi.calisanyonetimi" %>



<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Çalışanlar</title>
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Roboto:400,700"
    />
    <!-- https://fonts.google.com/specimen/Roboto -->
    <link rel="stylesheet" href="css/fontawesome.min.css" />
    <!-- https://fontawesome.com/ -->
      <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="jquery-ui-datepicker/jquery-ui.min.css" type="text/css" />
    <!-- http://api.jqueryui.com/datepicker/ -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="css/templatemo-style.css">
    <!--
	Product Admin CSS Template
	https://templatemo.com/tm-524-product-admin
	-->
  </head>

  <body id="reportsPage">
    <div class="" id="home">
      <nav class="navbar navbar-expand-xl">
      <div class="container h-100">
        <a class="navbar-brand" href="yoneticisayfasi.aspx">
          <h1 class="tm-site-title mb-0">Yönetici Sayfası</h1>
        </a>
        <button
          class="navbar-toggler ml-auto mr-0"
          type="button"
          data-toggle="collapse"
          data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <i class="fas fa-bars tm-nav-icon"></i>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mx-auto h-100">
            <li class="nav-item">
              <a class="nav-link " href="yoneticisayfasi.aspx">
                <i class="fas fa-shopping-cart"></i> Ürün Yönetimi
              </a>
            </li>

            <li class="nav-item">
              <a class="nav-link active" href="calisanyonetimi.aspx">
                <i class="far fa-user"></i> Çalışanlar
              </a>
            </li>
            <li class="nav-item dropdown">
              <a
                class="nav-link dropdown-toggle"
                href="#"
                id="navbarDropdown"
                role="button"
                data-toggle="dropdown"
                aria-haspopup="true"
                aria-expanded="false"
              >
                <i class="fas fa-cog"></i>
                <span> Ayarlar <i class="fas fa-angle-down"></i> </span>
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="#">Profile</a>
                <a class="dropdown-item" href="#">Billing</a>
                <a class="dropdown-item" href="#">Customize</a>
              </div>
            </li>
          </ul>
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link d-block" href="Home.aspx">
                Yönetici, <b>Çıkış</b>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <form runat="server" action="" class="tm-signup-form row">
      <div class="container mt-5">
        <div class="row tm-content-row">
          <div class="col-12 tm-block-col">
            <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
              <h2 class="tm-block-title">Çalışanlar Listesi</h2>
              <p class="text-white">Hesaplar</p>
                <asp:DropDownList CssClass="custom-select" ID="calisanlistesi" runat="server">
                    <asp:ListItem Text="Lütfen bir çalışan seçiniz." Selected="True" value="bos"/>
                </asp:DropDownList>
            </div>
          </div>
        </div>
        <!-- row -->
        <div class="row tm-content-row">
          <div class="tm-block-col tm-col-avatar">
            <div class="tm-bg-primary-dark tm-block tm-block-avatar">
              <h2 class="tm-block-title">Çalışan Resmini Değiştirin</h2>
              <div class="tm-avatar-container">
                <img
                  src="img/avatar.png"
                  alt="Avatar"
                  class="tm-avatar img-fluid mb-4"
                />
                    <asp:LinkButton ID="deleteavatarlink" runat="server" CssClass="tm-avatar-delete-link far fa-trash-alt tm-product-delete-icon"></asp:LinkButton>
              </div>
              <button class="btn btn-primary btn-block text-uppercase">
                Yeni Resim Yükle
              </button>
            </div>
          </div>
          <div class="tm-block-col tm-col-account-settings">
            <div class="tm-bg-primary-dark tm-block tm-block-settings">
              <h2 class="tm-block-title">Hesap Ayarlar</h2>
                <div class="form-group col-lg-6">
                  <label for="name">Çalışan İsmi</label>
                    <asp:TextBox ID="isim" CssClass="form-control validate" runat="server"></asp:TextBox>
                </div>
                <div class="form-group col-lg-6">
                  <label for="email">Çalışan Maili</label>
                     <asp:TextBox ID="mail" CssClass="form-control validate" TextMode="Email" runat="server"></asp:TextBox>
                </div>
                <div class="form-group col-lg-6">
                  <label for="password">Şifre</label>
                    <asp:TextBox ID="sifre" CssClass="form-control validate" TextMode="Password" runat="server"></asp:TextBox>
                </div>
                <div class="form-group col-lg-6">
                  <label for="password2">Şifreyi Tekrar Giriniz</label>
                  <input
                    id="password2"
                    name="password2"
                    type="password"
                    class="form-control validate"
                  />
                </div>
                <div class="form-group col-lg-6">
                  <label for="phone">Telefon Numarası</label>
                    <asp:TextBox ID="telefon" CssClass="form-control validate" TextMode="Phone" runat="server"></asp:TextBox>
                </div>
                <div class="form-group col-lg-6">
                  <label class="tm-hide-sm">&nbsp;</label>
                    <asp:Button ID="guncelle" CssClass="btn btn-primary btn-block text-uppercase" runat="server" Text="Profili Güncelle" />
                </div>
                <div class="col-12">
                    <asp:Button ID="Button1" CssClass="btn btn-primary btn-block text-uppercase" runat="server" Text="Hesabı Sil" />
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <footer class="tm-footer row tm-mt-small">
        <div class="col-12 font-weight-light">
          <p class="text-center text-white mb-0 px-4 small">
            Copyright &copy; <b>2022</b> Tüm Hakları Saklıdır. 
            
            Design: Berat Can Kara
          </p>
        </div>
      </footer>
    </div>

    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
  </body>
</html>
