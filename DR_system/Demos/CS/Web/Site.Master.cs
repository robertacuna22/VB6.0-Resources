using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void OnWordClick(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("http://www.e-iceblue.com/Introduce/word-for-net-introduce.html");
        }

        protected void OnExcelClick(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("http://www.e-iceblue.com/Introduce/excel-for-net-introduce.html");
        }

        protected void OnPdfClick(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("http://www.e-iceblue.com/Introduce/pdf-for-net-introduce.html");
        }

        protected void OnBarcodeClick(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("http://www.e-iceblue.com/Introduce/barcode-for-net-introduce.html");
        }
    }
}
