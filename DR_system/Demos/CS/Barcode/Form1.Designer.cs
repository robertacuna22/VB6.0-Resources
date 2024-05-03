namespace Barcode
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
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.label1 = new System.Windows.Forms.Label();
            this.comboBoxType = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.comboBoxText = new System.Windows.Forms.ComboBox();
            this.textBoxText = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.textBoxSize = new System.Windows.Forms.TextBox();
            this.btnCreate = new System.Windows.Forms.Button();
            this.btnScan = new System.Windows.Forms.Button();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.comboBoxFont = new System.Windows.Forms.ComboBox();
            this.comboBoxColor = new System.Windows.Forms.ComboBox();
            this.checkBoxText = new System.Windows.Forms.CheckBox();
            this.checkBoxBorder = new System.Windows.Forms.CheckBox();
            this.checkBoxSum = new System.Windows.Forms.CheckBox();
            this.label7 = new System.Windows.Forms.Label();
            this.textBoxHeight = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::Barcode.Properties.Resources.img;
            this.pictureBox1.Location = new System.Drawing.Point(-1, -1);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(560, 377);
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(42, 129);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(83, 12);
            this.label1.TabIndex = 1;
            this.label1.Text = "Barcode Type:";
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
            this.comboBoxType.Location = new System.Drawing.Point(128, 127);
            this.comboBoxType.Name = "comboBoxType";
            this.comboBoxType.Size = new System.Drawing.Size(153, 20);
            this.comboBoxType.TabIndex = 2;
            this.comboBoxType.Text = "Code128";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(42, 203);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(83, 12);
            this.label2.TabIndex = 3;
            this.label2.Text = "Barcode Text:";
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
            this.comboBoxText.Location = new System.Drawing.Point(404, 125);
            this.comboBoxText.Name = "comboBoxText";
            this.comboBoxText.Size = new System.Drawing.Size(121, 20);
            this.comboBoxText.TabIndex = 4;
            this.comboBoxText.Text = "Solid";
            // 
            // textBoxText
            // 
            this.textBoxText.Location = new System.Drawing.Point(128, 203);
            this.textBoxText.Name = "textBoxText";
            this.textBoxText.Size = new System.Drawing.Size(82, 21);
            this.textBoxText.TabIndex = 5;
            this.textBoxText.Text = "12345";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(384, 203);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(65, 12);
            this.label4.TabIndex = 7;
            this.label4.Text = "Font Size:";
            // 
            // textBoxSize
            // 
            this.textBoxSize.Location = new System.Drawing.Point(452, 203);
            this.textBoxSize.Name = "textBoxSize";
            this.textBoxSize.Size = new System.Drawing.Size(73, 21);
            this.textBoxSize.TabIndex = 8;
            this.textBoxSize.Text = "8";
            // 
            // btnCreate
            // 
            this.btnCreate.Location = new System.Drawing.Point(173, 333);
            this.btnCreate.Name = "btnCreate";
            this.btnCreate.Size = new System.Drawing.Size(75, 23);
            this.btnCreate.TabIndex = 9;
            this.btnCreate.Text = "Create";
            this.btnCreate.UseVisualStyleBackColor = true;
            this.btnCreate.Click += new System.EventHandler(this.btnCreate_Click);
            // 
            // btnScan
            // 
            this.btnScan.Location = new System.Drawing.Point(362, 332);
            this.btnScan.Name = "btnScan";
            this.btnScan.Size = new System.Drawing.Size(75, 23);
            this.btnScan.TabIndex = 10;
            this.btnScan.Text = "Scan";
            this.btnScan.UseVisualStyleBackColor = true;
            this.btnScan.Click += new System.EventHandler(this.btnScan_Click);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(42, 165);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(77, 12);
            this.label5.TabIndex = 11;
            this.label5.Text = "Font Family:";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(320, 165);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(71, 12);
            this.label6.TabIndex = 12;
            this.label6.Text = "Fore Color:";
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
            this.comboBoxFont.Location = new System.Drawing.Point(128, 165);
            this.comboBoxFont.Name = "comboBoxFont";
            this.comboBoxFont.Size = new System.Drawing.Size(153, 20);
            this.comboBoxFont.TabIndex = 14;
            this.comboBoxFont.Text = "Verdana";
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
            this.comboBoxColor.Location = new System.Drawing.Point(404, 165);
            this.comboBoxColor.Name = "comboBoxColor";
            this.comboBoxColor.Size = new System.Drawing.Size(121, 20);
            this.comboBoxColor.TabIndex = 15;
            this.comboBoxColor.Text = "Black";
            // 
            // checkBoxText
            // 
            this.checkBoxText.AutoSize = true;
            this.checkBoxText.Checked = true;
            this.checkBoxText.CheckState = System.Windows.Forms.CheckState.Checked;
            this.checkBoxText.Location = new System.Drawing.Point(42, 241);
            this.checkBoxText.Name = "checkBoxText";
            this.checkBoxText.Size = new System.Drawing.Size(78, 16);
            this.checkBoxText.TabIndex = 16;
            this.checkBoxText.Text = "Show Text";
            this.checkBoxText.UseVisualStyleBackColor = true;
            // 
            // checkBoxBorder
            // 
            this.checkBoxBorder.AutoSize = true;
            this.checkBoxBorder.Location = new System.Drawing.Point(224, 241);
            this.checkBoxBorder.Name = "checkBoxBorder";
            this.checkBoxBorder.Size = new System.Drawing.Size(90, 16);
            this.checkBoxBorder.TabIndex = 17;
            this.checkBoxBorder.Text = "Show Border";
            this.checkBoxBorder.UseVisualStyleBackColor = true;
            // 
            // checkBoxSum
            // 
            this.checkBoxSum.AutoSize = true;
            this.checkBoxSum.Checked = true;
            this.checkBoxSum.CheckState = System.Windows.Forms.CheckState.Checked;
            this.checkBoxSum.Location = new System.Drawing.Point(386, 241);
            this.checkBoxSum.Name = "checkBoxSum";
            this.checkBoxSum.Size = new System.Drawing.Size(102, 16);
            this.checkBoxSum.TabIndex = 18;
            this.checkBoxSum.Text = "Show CheckSum";
            this.checkBoxSum.UseVisualStyleBackColor = true;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(222, 203);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(71, 12);
            this.label7.TabIndex = 19;
            this.label7.Text = "Bar Height:";
            // 
            // textBoxHeight
            // 
            this.textBoxHeight.Location = new System.Drawing.Point(299, 203);
            this.textBoxHeight.Name = "textBoxHeight";
            this.textBoxHeight.Size = new System.Drawing.Size(62, 21);
            this.textBoxHeight.TabIndex = 20;
            this.textBoxHeight.Text = "15";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(320, 130);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(77, 12);
            this.label3.TabIndex = 6;
            this.label3.Text = "Border Type:";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(44, 282);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(77, 12);
            this.label8.TabIndex = 21;
            this.label8.Text = "Scan Result:";
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(128, 279);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(100, 21);
            this.textBox1.TabIndex = 22;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(558, 376);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.textBoxHeight);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.checkBoxSum);
            this.Controls.Add(this.checkBoxBorder);
            this.Controls.Add(this.checkBoxText);
            this.Controls.Add(this.comboBoxColor);
            this.Controls.Add(this.comboBoxFont);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.btnScan);
            this.Controls.Add(this.btnCreate);
            this.Controls.Add(this.textBoxSize);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.textBoxText);
            this.Controls.Add(this.comboBoxText);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.comboBoxType);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.pictureBox1);
            this.Name = "Form1";
            this.Text = "Barcode";
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox comboBoxType;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox comboBoxText;
        private System.Windows.Forms.TextBox textBoxText;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox textBoxSize;
        private System.Windows.Forms.Button btnCreate;
        private System.Windows.Forms.Button btnScan;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.ComboBox comboBoxFont;
        private System.Windows.Forms.ComboBox comboBoxColor;
        private System.Windows.Forms.CheckBox checkBoxText;
        private System.Windows.Forms.CheckBox checkBoxBorder;
        private System.Windows.Forms.CheckBox checkBoxSum;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox textBoxHeight;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox textBox1;
    }
}

