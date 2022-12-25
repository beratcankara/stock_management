using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;

namespace depostockyonetimi
{
    interface ISilinenUrunler
    {
        void urunSil();
    }
    class Urunler
    {
        private String urunIsmi;
        public String UrunIsmi
        {
            get
            {
                if (urunIsmi.Length < 5)
                {
                    return "Ürün ismi en az 5 harfli olmaıdır.";
                }
                else
                {
                    return urunIsmi;
                }
            }
            set { urunIsmi = CultureInfo.CurrentCulture.TextInfo.ToTitleCase(urunIsmi); }
        }
        private String urunAciklamasi;
        public String UrunAciklamasi
        {
            get { return urunAciklamasi; }
            set { urunAciklamasi = value; }
        }
        private String urunKategorisi;
        private int urunGt;
        public int UrunGt
        {
            get { return urunGt; }
            set { urunGt = value; }
        }
        private int urunAdedi;
        public int UrunAdedi
        {
            get
            {
                if (UrunAdedi < 0)
                    return 0;
                else
                    return urunAdedi;
            }
            set { urunAdedi = value; }
        }

        public Urunler(string urunIsmi, string urunAciklamasi, string urunKategorisi, int urunGt, int urunAdedi)
        {
            this.urunIsmi = urunIsmi;
            this.urunAciklamasi = urunAciklamasi;
            this.urunKategorisi = urunKategorisi;
            this.urunGt = urunGt;
            this.urunAdedi = urunAdedi;
        }

        public virtual string urunBilgileriniYazdir()
        {
            String urunBilgisi = urunIsmi + " modelli ürünün " + urunAciklamasi + " ozellikleri ile " + urunGt + " yıl garantisi vardır. Bu üründen " + urunAdedi + " adet kalmıştır.";
            return urunBilgisi;
        }
    }

    class Kulaklik : Urunler
    {
        private int desibelDuzeyi;
        public Kulaklik(string urunIsmi, string urunAciklamasi, int urunGt, int urunAdedi, int desibelDuzeyi) : base("", "", "Kulaklık", 0, 0)
        {
            this.desibelDuzeyi = desibelDuzeyi;
        }
        public override string urunBilgileriniYazdir()
        {
            base.urunBilgileriniYazdir();
            String urunBilgisi = UrunIsmi + " modelli ürünün " + UrunAciklamasi + " ozellikleri ile " + desibelDuzeyi + " desibeldir ve " + UrunGt + " yıl garantisi vardır. Bu üründen " + UrunAdedi + " adet kalmıştır.";
            return urunBilgisi;
        }
    }

    class SilinenUrumler : ISilinenUrunler
    {
        public void urunSil()
        {
            Console.WriteLine("Urun Silindi");
        }
    }
}