using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.IO;
using System.Drawing.Imaging;

using Spire.Barcode;

namespace WebApplication3
{
    public partial class _Default : System.Web.UI.Page
    {
        protected string fontName="Verdana";
        protected void Page_Load(object sender, EventArgs e)
        {
            this.BarCodeControl1.ShowCheckSumChar = this.checkShowSum.Checked;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Stream stream = new MemoryStream();
            this.BarCodeControl1.SaveToStream(stream, ImageFormat.Png);
            string[] datas = Spire.Barcode.BarcodeScanner.Scan(stream);
            this.lblResult.Visible = true;
            this.lblResult.Text = datas[0];

            this.lblResult.ForeColor = System.Drawing.Color.Red;
        }

        protected void OnTypeChanged(object sender, EventArgs e)
        {
            string barcodeType=this.dropDownListType.SelectedItem.ToString();
            this.BarCodeControl1.Type = (BarCodeType)Enum.Parse(typeof(BarCodeType), barcodeType);
        }

        protected void OnBorderChanged(object sender, EventArgs e)
        {
            if (this.checkShowBorder.Checked)
            {
                string border = this.borderType.SelectedItem.ToString();
                this.BarCodeControl1.HasBorder = true;
                this.BarCodeControl1.BorderDashStyle = (DashStyle)Enum.Parse(typeof(DashStyle), border);
            }
        }

        protected void OnForeColorChanged(object sender, EventArgs e)
        {
            string colorName = this.DropDownListColor.SelectedItem.ToString();
            this.BarCodeControl1.ForeColor = Color.FromName(colorName);
            this.lblResult.Text = colorName;
        }

        protected void OnShowBorderChanged(object sender, EventArgs e)
        {
            this.BarCodeControl1.HasBorder = this.checkShowBorder.Checked;
        }

        protected void OnFontChanged(object sender, EventArgs e)
        {
            fontName = this.dropFont.SelectedItem.ToString();
            short fontSize = 8;
            if (this.textBoxFontSize.Text != null && this.textBoxFontSize.Text.Length > 0)
            {
                if (Int16.TryParse(this.textBoxFontSize.Text, out fontSize))
                {
                    fontSize = Int16.Parse(this.textBoxFontSize.Text);
                }
            }
            this.BarCodeControl1.TextFont = new Font(fontName,fontSize);
        }

        protected void OnFontSizeChanged(object sender, EventArgs e)
        {
             short fontSize = 8;
            if (this.textBoxFontSize.Text != null && this.textBoxFontSize.Text.Length > 0)
            {
                if (Int16.TryParse(this.textBoxFontSize.Text, out fontSize))
                {
                    fontSize = Int16.Parse(this.textBoxFontSize.Text);
                }
            }
            this.BarCodeControl1.TextFont = new Font(fontName,fontSize);
        }

        protected void OnBarHeightChanged(object sender, EventArgs e)
        {
            short barHeight = 15;
            if (this.textBoxHeight.Text != null && this.textBoxHeight.Text.Length > 0)
            {
                if(Int16.TryParse(this.textBoxHeight.Text,out barHeight))
                {
                    barHeight=Int16.Parse(this.textBoxHeight.Text);
                }
            }
            this.BarCodeControl1.BarHeight=barHeight;
        }

        protected void OnShowTextChanged(object sender, EventArgs e)
        {
            this.BarCodeControl1.ShowText = this.checkShowText.Checked;
        }

        protected void OnCheckSumChanged(object sender, EventArgs e)
        {
            this.BarCodeControl1.ShowCheckSumChar = this.checkShowSum.Checked;
        }

        protected void OnTextChanged(object sender, EventArgs e)
        {
            if ((sender as TextBox).Text != null)
            {
                this.BarCodeControl1.Data = this.textBoxText.Text;
                this.BarCodeControl1.Data2D = this.textBoxText.Text;
            }
        }
    }
}
