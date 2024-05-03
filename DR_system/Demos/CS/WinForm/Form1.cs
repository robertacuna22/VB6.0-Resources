using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Drawing.Drawing2D;

using Spire.Barcode.Forms;
using Spire.Barcode;

namespace barcodeWinform
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.barCodeControl1.SaveToFile("test.png");
            System.Diagnostics.Process.Start("test.png");
        }

        private void button2_Click(object sender, EventArgs e)
        {
            string[] barcodes = Spire.Barcode.BarcodeScanner.Scan(this.barCodeControl1.GenerateImage());
            if (barcodes.Length > 0)
                this.textBox1.Text = barcodes[0];
        }

        private void comboBoxType_SelectedIndexChanged(object sender, EventArgs e)
        {
            string barcodeType = (sender as ComboBox).SelectedItem.ToString();
            this.barCodeControl1.Type = (BarCodeType)Enum.Parse(typeof(BarCodeType), barcodeType);
        }

        private void comboBoxText_SelectedIndexChanged(object sender, EventArgs e)
        {
            string borderType = (sender as ComboBox).SelectedItem.ToString();
            this.barCodeControl1.BorderDashStyle = (DashStyle)Enum.Parse(typeof(DashStyle), borderType);
        }

        private void comboBoxFont_SelectedIndexChanged(object sender, EventArgs e)
        {
            string fontName = (sender as ComboBox).SelectedItem.ToString();
            this.barCodeControl1.Font = new Font(fontName, 8f);
        }

        private void comboBoxColor_SelectedIndexChanged(object sender, EventArgs e)
        {
            string color = (sender as ComboBox).SelectedItem.ToString();
            this.barCodeControl1.ForeColor = Color.FromName(color);
        }

        private void textBoxText_TextChanged(object sender, EventArgs e)
        {
            if ((sender as TextBox).Text != null)
            {
                this.barCodeControl1.Data = (sender as TextBox).Text;
                this.barCodeControl1.Data2D = (sender as TextBox).Text;
            }
        }

        private void textBoxHeight_TextChanged(object sender, EventArgs e)
        {
            string height = (sender as TextBox).Text;
            short validHeight = 15;
            if (Int16.TryParse(height, out validHeight))
            {
                validHeight = Int16.Parse(height);
            }
            this.barCodeControl1.BarHeight = validHeight;
        }

        private void textBoxSize_TextChanged(object sender, EventArgs e)
        {
            string fontSize = (sender as TextBox).Text;
            short validSize = 15;

            string fontName = "SimSun";
            if (Int16.TryParse(fontSize, out validSize))
            {
                validSize = Int16.Parse(fontSize);
            }
            if (this.comboBoxFont.SelectedItem != null)
            {
                fontName = this.comboBoxFont.SelectedItem.ToString();
            }
            this.barCodeControl1.Font = new Font(fontName, validSize);
        }

        private void checkBoxText_CheckedChanged(object sender, EventArgs e)
        {
            this.barCodeControl1.ShowText = (sender as CheckBox).Checked;
        }

        private void checkBoxBorder_CheckedChanged(object sender, EventArgs e)
        {
            this.barCodeControl1.HasBorder = (sender as CheckBox).Checked;
        }

        private void checkBoxSum_CheckedChanged(object sender, EventArgs e)
        {
            this.barCodeControl1.ShowCheckSumChar = (sender as CheckBox).Checked;
        }
    }
}
