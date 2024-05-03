using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Drawing.Drawing2D;

using Spire.Barcode;

namespace Barcode
{
    public partial class Form1 : Form
    {
        public BarcodeSettings settings;
        public Form1()
        {
            InitializeComponent();
        }

        private void btnCreate_Click(object sender, EventArgs e)
        {
            //set the configuration of barcode
            settings = new BarcodeSettings();
            string data = "12345";
            string type = "Code128";
            if (this.textBoxText.Text != null && this.textBoxText.Text.Length > 0)
            {
                data = this.textBoxText.Text;
            }

            settings.Data2D = data;
            settings.Data = this.textBoxText.Text;

            if (comboBoxType.SelectedItem != null)
            {
                type = comboBoxType.SelectedItem.ToString();
            }
            settings.Type = (BarCodeType)Enum.Parse(typeof(BarCodeType), type);

            if (this.checkBoxBorder.Checked)
            {
                if (comboBoxText.SelectedItem != null)
                {
                    settings.HasBorder = true;
                    settings.BorderDashStyle = (DashStyle)Enum.Parse(typeof(DashStyle), comboBoxText.SelectedItem.ToString());
                }
            }
           
            short fontSize=8;
            string font = "SimSun";
            if (this.comboBoxFont.SelectedItem != null)
            {
                font=this.comboBoxFont.SelectedItem.ToString();
            }

            if (this.textBoxSize.Text != null && this.textBoxSize.Text.Length > 0 && Int16.TryParse(this.textBoxSize.Text, out fontSize))
            {
                if (font != null && font.Length > 0)
                {
                    settings.TextFont = new System.Drawing.Font(font, fontSize, FontStyle.Bold);
                }
            }

            short barHeight=15;
            if (this.textBoxHeight.Text != null && this.textBoxHeight.Text.Length > 0 && Int16.TryParse(this.textBoxHeight.Text, out barHeight))
            {
                settings.BarHeight = barHeight;
            }
            if (this.checkBoxText.Checked)
            {
                settings.ShowText = true;
            }
            else
            {
                settings.ShowText = false;
            }

            if (this.checkBoxSum.Checked)
            {
                settings.ShowCheckSumChar = true;
            }
            else
            {
                settings.ShowCheckSumChar = false;
            }

            if (this.comboBoxColor.SelectedItem != null)
            {
                string foreColor = this.comboBoxColor.SelectedItem.ToString();
                settings.ForeColor = Color.FromName(foreColor);
            }

            //generate the barcode use the settings
            BarCodeGenerator generator = new BarCodeGenerator(settings);
            Image barcode=generator.GenerateImage();

            //save the barcode as an image
            barcode.Save(@"..\..\..\..\Data\barcode.png");

            //launch the generated barcode image
            System.Diagnostics.Process.Start(@"..\..\..\..\Data\barcode.png");
        }

        private void btnScan_Click(object sender, EventArgs e)
        {
            //scan the barcode
            string[] datas = BarcodeScanner.Scan(@"..\..\..\..\Data\barcode.png");

            //show the scan result
            this.textBox1.Text = datas[0];
        }
    }
}
