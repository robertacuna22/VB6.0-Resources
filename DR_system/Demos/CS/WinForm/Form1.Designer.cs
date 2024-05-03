namespace barcodeWinform
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.lblResult = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.textBoxHeight = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.checkBoxSum = new System.Windows.Forms.CheckBox();
            this.checkBoxBorder = new System.Windows.Forms.CheckBox();
            this.checkBoxText = new System.Windows.Forms.CheckBox();
            this.comboBoxColor = new System.Windows.Forms.ComboBox();
            this.comboBoxFont = new System.Windows.Forms.ComboBox();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.textBoxSize = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.textBoxText = new System.Windows.Forms.TextBox();
            this.comboBoxText = new System.Windows.Forms.ComboBox();
            this.label8 = new System.Windows.Forms.Label();
            this.comboBoxType = new System.Windows.Forms.ComboBox();
            this.label9 = new System.Windows.Forms.Label();
            this.barCodeControl1 = new Spire.Barcode.Forms.BarCodeControl();
            this.SuspendLayout();
            // 
            // button1
            // 
            this.button1.Font = new System.Drawing.Font("SimSun", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.button1.Location = new System.Drawing.Point(274, 485);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 30);
            this.button1.TabIndex = 1;
            this.button1.Text = "Save";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.Font = new System.Drawing.Font("SimSun", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.button2.Location = new System.Drawing.Point(433, 485);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(75, 30);
            this.button2.TabIndex = 1;
            this.button2.Text = "Scan";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // lblResult
            // 
            this.lblResult.AutoSize = true;
            this.lblResult.Location = new System.Drawing.Point(33, 447);
            this.lblResult.Name = "lblResult";
            this.lblResult.Size = new System.Drawing.Size(83, 12);
            this.lblResult.TabIndex = 2;
            this.lblResult.Text = "Scan Result :";
            // 
            // label1
            // 
            this.label1.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.SteelBlue;
            this.label1.Location = new System.Drawing.Point(30, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(602, 98);
            this.label1.TabIndex = 4;
            this.label1.Text = resources.GetString("label1.Text");
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(31, 174);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(95, 12);
            this.label2.TabIndex = 5;
            this.label2.Text = "barcodeControl:";
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(119, 443);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(100, 21);
            this.textBox1.TabIndex = 7;
            // 
            // textBoxHeight
            // 
            this.textBoxHeight.Location = new System.Drawing.Point(290, 361);
            this.textBoxHeight.Name = "textBoxHeight";
            this.textBoxHeight.Size = new System.Drawing.Size(62, 21);
            this.textBoxHeight.TabIndex = 37;
            this.textBoxHeight.Text = "15";
            this.textBoxHeight.TextChanged += new System.EventHandler(this.textBoxHeight_TextChanged);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(213, 361);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(71, 12);
            this.label7.TabIndex = 36;
            this.label7.Text = "Bar Height:";
            // 
            // checkBoxSum
            // 
            this.checkBoxSum.AutoSize = true;
            this.checkBoxSum.Checked = true;
            this.checkBoxSum.CheckState = System.Windows.Forms.CheckState.Checked;
            this.checkBoxSum.Location = new System.Drawing.Point(377, 399);
            this.checkBoxSum.Name = "checkBoxSum";
            this.checkBoxSum.Size = new System.Drawing.Size(102, 16);
            this.checkBoxSum.TabIndex = 35;
            this.checkBoxSum.Text = "Show CheckSum";
            this.checkBoxSum.UseVisualStyleBackColor = true;
            this.checkBoxSum.CheckedChanged += new System.EventHandler(this.checkBoxSum_CheckedChanged);
            this.barCodeControl1.ShowCheckSumChar = this.checkBoxSum.Checked;
            // 
            // checkBoxBorder
            // 
            this.checkBoxBorder.AutoSize = true;
            this.checkBoxBorder.Location = new System.Drawing.Point(215, 399);
            this.checkBoxBorder.Name = "checkBoxBorder";
            this.checkBoxBorder.Size = new System.Drawing.Size(90, 16);
            this.checkBoxBorder.TabIndex = 34;
            this.checkBoxBorder.Text = "Show Border";
            this.checkBoxBorder.UseVisualStyleBackColor = true;
            this.checkBoxBorder.CheckedChanged += new System.EventHandler(this.checkBoxBorder_CheckedChanged);
            // 
            // checkBoxText
            // 
            this.checkBoxText.AutoSize = true;
            this.checkBoxText.Checked = true;
            this.checkBoxText.CheckState = System.Windows.Forms.CheckState.Checked;
            this.checkBoxText.Location = new System.Drawing.Point(33, 399);
            this.checkBoxText.Name = "checkBoxText";
            this.checkBoxText.Size = new System.Drawing.Size(78, 16);
            this.checkBoxText.TabIndex = 33;
            this.checkBoxText.Text = "Show Text";
            this.checkBoxText.UseVisualStyleBackColor = true;
            this.checkBoxText.CheckedChanged += new System.EventHandler(this.checkBoxText_CheckedChanged);
            // 
            // comboBoxColor
            // 
            this.comboBoxColor.ForeColor = System.Drawing.SystemColors.InfoText;
            this.comboBoxColor.FormattingEnabled = true;
            this.comboBoxColor.Items.AddRange(new object[] {
            "AliceBlue",
            "AntiqueWhite",
            "Aqua",
            "Aquamarine",
            "Azure",
            "Beige",
            "Bisque",
            "Black",
            "BlanchedAlmond",
            "Blue",
            "BlueViolet",
            "Brown",
            "BurlyWood",
            "CadetBlue",
            "Chocolate",
            "Coral",
            "DarkBlue",
            "DarkGreen",
            "Goldenrod",
            "GreenYellow",
            "SteelBlue"});
            this.comboBoxColor.Location = new System.Drawing.Point(395, 323);
            this.comboBoxColor.Name = "comboBoxColor";
            this.comboBoxColor.Size = new System.Drawing.Size(121, 20);
            this.comboBoxColor.TabIndex = 32;
            this.comboBoxColor.Text = "Black";
            this.comboBoxColor.SelectedIndexChanged += new System.EventHandler(this.comboBoxColor_SelectedIndexChanged);
            // 
            // comboBoxFont
            // 
            this.comboBoxFont.FormattingEnabled = true;
            this.comboBoxFont.Items.AddRange(new object[] {
            "Cambria",
            "Calibri",
            "Arial",
            "Verdana",
            "Arial Black",
            "Arial Narrow",
            "SimSun",
            "Corbel",
            ""});
            this.comboBoxFont.Location = new System.Drawing.Point(119, 323);
            this.comboBoxFont.Name = "comboBoxFont";
            this.comboBoxFont.Size = new System.Drawing.Size(153, 20);
            this.comboBoxFont.TabIndex = 31;
            this.comboBoxFont.Text = "Verdana";
            this.comboBoxFont.SelectedIndexChanged += new System.EventHandler(this.comboBoxFont_SelectedIndexChanged);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(311, 323);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(71, 12);
            this.label6.TabIndex = 30;
            this.label6.Text = "Fore Color:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(33, 323);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(77, 12);
            this.label5.TabIndex = 29;
            this.label5.Text = "Font Family:";
            // 
            // textBoxSize
            // 
            this.textBoxSize.Location = new System.Drawing.Point(443, 361);
            this.textBoxSize.Name = "textBoxSize";
            this.textBoxSize.Size = new System.Drawing.Size(73, 21);
            this.textBoxSize.TabIndex = 28;
            this.textBoxSize.Text = "8";
            this.textBoxSize.TextChanged += new System.EventHandler(this.textBoxSize_TextChanged);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(375, 361);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(65, 12);
            this.label4.TabIndex = 27;
            this.label4.Text = "Font Size:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(311, 288);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(77, 12);
            this.label3.TabIndex = 26;
            this.label3.Text = "Border Type:";
            // 
            // textBoxText
            // 
            this.textBoxText.Location = new System.Drawing.Point(119, 361);
            this.textBoxText.Name = "textBoxText";
            this.textBoxText.Size = new System.Drawing.Size(82, 21);
            this.textBoxText.TabIndex = 25;
            this.textBoxText.Text = "12345";
            this.textBoxText.TextChanged += new System.EventHandler(this.textBoxText_TextChanged);
            // 
            // comboBoxText
            // 
            this.comboBoxText.FormattingEnabled = true;
            this.comboBoxText.Items.AddRange(new object[] {
            "Solid",
            "Dash",
            "Dot",
            "DashDot",
            "DashDotDot"});
            this.comboBoxText.Location = new System.Drawing.Point(395, 283);
            this.comboBoxText.Name = "comboBoxText";
            this.comboBoxText.Size = new System.Drawing.Size(121, 20);
            this.comboBoxText.TabIndex = 24;
            this.comboBoxText.Text = "Solid";
            this.comboBoxText.SelectedIndexChanged += new System.EventHandler(this.comboBoxText_SelectedIndexChanged);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(33, 361);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(83, 12);
            this.label8.TabIndex = 23;
            this.label8.Text = "Barcode Text:";
            // 
            // comboBoxType
            // 
            this.comboBoxType.FormattingEnabled = true;
            this.comboBoxType.Items.AddRange(new object[] {
            "Codabar",
            "Code11",
            "Code25",
            "Interleaved25",
            "Code39",
            "Code39Extended",
            "Code93",
            "Code93Extended",
            "Code128",
            "EAN8",
            "EAN13",
            "EAN128",
            "EAN14",
            "SCC14",
            "SSCC18",
            "ITF14",
            "ITF6",
            "UPCA",
            "UPCE",
            "PostNet",
            "Planet",
            "MSI",
            "DataMatrix",
            "QRCode",
            "Pdf417",
            "Pdf417Macro",
            "RSS14",
            "RSS14Truncated",
            "RSSLimited",
            "RSSExpanded",
            "USPS",
            "SwissPostParcel",
            "PZN",
            "OPC",
            "DeutschePostIdentcode",
            "DeutschePostleitcode",
            "RoyalMail4State",
            "SingaporePost4State"});
            this.comboBoxType.Location = new System.Drawing.Point(119, 285);
            this.comboBoxType.Name = "comboBoxType";
            this.comboBoxType.Size = new System.Drawing.Size(153, 20);
            this.comboBoxType.TabIndex = 22;
            this.comboBoxType.Text = "Code128";
            this.comboBoxType.SelectedIndexChanged += new System.EventHandler(this.comboBoxType_SelectedIndexChanged);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(33, 287);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(83, 12);
            this.label9.TabIndex = 21;
            this.label9.Text = "Barcode Type:";
            // 
            // barCodeControl1
            // 
            this.barCodeControl1.BarHeight = 20F;
            this.barCodeControl1.BorderColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.barCodeControl1.BorderWidth = 0.6F;
            this.barCodeControl1.DpiX = 96F;
            this.barCodeControl1.DpiY = 96F;
            this.barCodeControl1.Font = new System.Drawing.Font("Verdana", 8F);
            this.barCodeControl1.ImageHeight = 30F;
            this.barCodeControl1.ImageWidth = 120F;
            this.barCodeControl1.Location = new System.Drawing.Point(133, 131);
            this.barCodeControl1.Name = "barCodeControl1";
            this.barCodeControl1.Rotate = 0F;
            this.barCodeControl1.Size = new System.Drawing.Size(189, 107);
            this.barCodeControl1.SupSpace = 4F;
            this.barCodeControl1.TabIndex = 6;
            this.barCodeControl1.TextFont = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.barCodeControl1.TopText = "Spire Demo";
            this.barCodeControl1.TopTextFont = new System.Drawing.Font("Arial", 8F);
            this.barCodeControl1.UseChecksum = Spire.Barcode.CheckSumMode.Auto;
            this.barCodeControl1.WideNarrowRatio = 3F;
            this.barCodeControl1.XYRatio = 0F;
            this.barCodeControl1.Y = 2F;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(636, 530);
            this.Controls.Add(this.textBoxHeight);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.checkBoxSum);
            this.Controls.Add(this.checkBoxBorder);
            this.Controls.Add(this.checkBoxText);
            this.Controls.Add(this.comboBoxColor);
            this.Controls.Add(this.comboBoxFont);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.textBoxSize);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.textBoxText);
            this.Controls.Add(this.comboBoxText);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.comboBoxType);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.barCodeControl1);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.lblResult);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Name = "Form1";
            this.Text = "BarcodeControl";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Label lblResult;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private Spire.Barcode.Forms.BarCodeControl barCodeControl1;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.TextBox textBoxHeight;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.CheckBox checkBoxSum;
        private System.Windows.Forms.CheckBox checkBoxBorder;
        private System.Windows.Forms.CheckBox checkBoxText;
        private System.Windows.Forms.ComboBox comboBoxColor;
        private System.Windows.Forms.ComboBox comboBoxFont;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox textBoxSize;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox textBoxText;
        private System.Windows.Forms.ComboBox comboBoxText;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.ComboBox comboBoxType;
        private System.Windows.Forms.Label label9;

    }
}

