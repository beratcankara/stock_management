<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yoneticisayfasi.aspx.cs" Inherits="depostockyonetimi.yoneticisayfasi" %>

<!DOCTYPE html>
<html lang="tr">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Yönetici Sayfası</title>
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Roboto:400,700"
    />
    <link rel="stylesheet" href="css/fontawesome.min.css" />
      <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="jquery-ui-datepicker/jquery-ui.min.css" type="text/css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/templatemo-style.css">
  </head>

  <body>
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
              <a class="nav-link active" href="yoneticisayfasi.aspx">
                <i class="fas fa-shopping-cart"></i> Ürün Yönetimi
              </a>
            </li>

            <li class="nav-item">
              <a class="nav-link" href="calisanyonetimi.aspx">
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
              <a class="nav-link d-block" href="loginscreen.aspx">
                Yönetici, <b>Çıkış</b>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <div class="container tm-mt-big tm-mb-big">
      <div class="row">
        <div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
          <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
            <div class="row">
              <div class="col-12">
                <h2 class="tm-block-title d-inline-block">Ürün Ekle</h2>
              </div>
            </div>
              
            <div class="row tm-edit-product-row">
              <div class="col-xl-6 col-lg-6 col-md-12">
                <form action="" class="tm-edit-product-form" runat="server">
                  <div class="form-group mb-3">
                    <label
                      for="name"
                      >Ürün İsmi
                    </label>
                      <asp:TextBox 
                          runat="server"
                          id="name"
                          name="name"
                          type="text"
                          class="form-control validate"
                          required>
                      </asp:TextBox>
                  </div>
                  <div class="form-group mb-3">
                    <label
                      for="description"
                      >Açıklaması</label
                    >
                      <asp:TextBox 
                          id ="aciklama"
                          name="aciklama"
                          class="form-control validate"
                          rows="3"
                          runat="server"
                          TextMode="MultiLine"
                          required>

                      </asp:TextBox>
                  </div>
                  <div class="form-group mb-3">
                    <label
                      for="category"
                      >Ürün Kategorisi</label
                    >

                      <asp:DropDownList ID="categories" class="custom-select tm-select-accounts" runat="server">
                      <asp:ListItem selected>Kategori Seçiniz</asp:ListItem>
                      <asp:ListItem value="mouse">Mouse</asp:ListItem>
                      <asp:ListItem value="klavye">Klavye</asp:ListItem>
                      <asp:ListItem value="kulaklik">Kulaklık</asp:ListItem>
                      </asp:DropDownList>
                  </div>
                  <div class="row">
                      <div class="form-group mb-3 col-xs-12 col-sm-6">
                          <label
                            for="expire_date"
                            >Garanti Yılı
                          </label>
                          <asp:TextBox ID="garantisure" CssClass="form-control validate" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group mb-3 col-xs-12 col-sm-6">
                          <label
                            for="stock"
                            >Ürün Stock Adedi
                          </label>
                          <asp:TextBox
                              id="stock"
                              name="stock"
                              type="text"
                              class="form-control validate"
                              required
                              runat="server"></asp:TextBox>

                        </div>
                  </div>
                  
              </div>
              <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                <div class="tm-product-img-dummy mx-auto">
                  <i  
                    class="fas fa-cloud-upload-alt tm-upload-icon"
                    onclick="document.getElementById('fileInput').click();"
                  ></i>
                </div>
                <div class="custom-file mt-3 mb-3">
                  <input id="fileInput" type="file" style="display:none;" />
                  <input
                    type="button"
                    class="btn btn-primary btn-block mx-auto"
                    value="ÜRÜN RESMİNİ EKLEYİNİZ"
                    onclick="document.getElementById('fileInput').click();"
                  />
                </div>
              </div>
              <div class="col-12">
                  <asp:Button   runat="server" ID="Button1" OnClick="ekle_click" class="btn btn-primary btn-block text-uppercase" Text=" Ürünü Ekle " />
                  <asp:Button   runat="server" ID="listelebtn" OnClick="listelebtn_Click" class="btn btn-primary btn-block text-uppercase" Text=" Ürünleri Listele " />
              </div>
                </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <footer class="tm-footer row tm-mt-small">
        <div class="col-12 font-weight-light">
          <p class="text-center text-white mb-0 px-4 small">
            Copyright &copy; <b>2022</b> All rights reserved. 
            
            Design: <a rel="nofollow noopener" href="home.aspx" class="tm-footer-link">Berat Can Kara</a>
        </p>
        </div>
    </footer> 

    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="jquery-ui-datepicker/jquery-ui.min.js"></script>
    <!-- https://jqueryui.com/download/ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
    <script>
      $(function() {
        $("#expire_date").datepicker();
      });
    </script>
  </body>
</html>
