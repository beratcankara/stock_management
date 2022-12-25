using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace depostockyonetimi
{
    public partial class listelenecekurunler : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            // List<string> listelencekUrunler = new List<string>();
            string listelencekUrunler;
            listelencekUrunler = Request.QueryString["urunler"].ToString();
            urunlerlistesi.Items.Add(listelencekUrunler);
        }
    }
}