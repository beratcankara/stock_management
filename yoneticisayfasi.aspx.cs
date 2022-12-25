using depostockyonetimi;
using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Globalization;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Runtime.Serialization;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace depostockyonetimi
{
    public partial class yoneticisayfasi : System.Web.UI.Page
    {
        public string dondurulecekMetin;
        Kulaklik kulaklik1 = new Kulaklik("X98", "Stereo Kulaklık", 2, 20, 75);
        List<Urunler> urunlers = new List<Urunler>();
        List<String> listelenecekurunler = new List<String>();
        Urunler eklenecekUrun;
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void listelebtn_Click(object sender, EventArgs e)
        {
            stringDondur();
            listelenecekurunler.Add(dondurulecekMetin);
            Response.Redirect("listelenecekurunler.aspx?urunler=" + listelenecekurunler);
        }

        public void stringDondur()
        {
            for (int i = 0; i < 1; i++)
            {
                dondurulecekMetin = urunlers[i].UrunIsmi;
            }
        }

        public void ekle_click(object sender, EventArgs e)
        {
            eklenecekUrun = urunuOlustur();
            urunlers.Add(eklenecekUrun);
        }
        private Urunler urunuOlustur()
        {
            var eklenecekUrun = new Urunler(name.Text, aciklama.Text, categories.SelectedItem.Text, int.Parse(garantisure.Text), int.Parse(stock.Text));
            return eklenecekUrun;
        }
    }

}