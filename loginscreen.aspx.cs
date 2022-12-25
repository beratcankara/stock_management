using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace depostockyonetimi
{
    public partial class loginscreen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text == "yonetici" && txtPassword.Text == "yoneticisifre" && adminLog.Checked)
            {
                lblmessage.Text = "Yönetici Girişi Yapıldı !";
                Response.Redirect("yoneticisayfasi.aspx?id=" + txtUserName.Text);
            }
            else if (txtUserName.Text == "calisan" && txtPassword.Text == "calisansifre" && calisanlog.Checked)
            {
                lblmessage.Text = "Çalışan Girişi Yapıldı !";
            }
            else if (txtUserName.Text == "musteri" && txtPassword.Text == "musterisifre" && calisanlog.Checked)
            {
                lblmessage.Text = "Müşteri Girişi Yapıldı !";
            }
            else
            {
                lblmessage.Text = "Hatalı Giriş Yaptınız !";
            }
        }
    }
}