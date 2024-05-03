Namespace Barcode
	Partial Public Class Form1
		''' <summary>
		''' Required designer variable.
		''' </summary>
		Private components As System.ComponentModel.IContainer = Nothing

		''' <summary>
		''' Clean up any resources being used.
		''' </summary>
		''' <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
		Protected Overrides Sub Dispose(ByVal disposing As Boolean)
			If disposing AndAlso (components IsNot Nothing) Then
				components.Dispose()
			End If
			MyBase.Dispose(disposing)
		End Sub

		#Region "Windows Form Designer generated code"

		''' <summary>
		''' Required method for Designer support - do not modify
		''' the contents of this method with the code editor.
		''' </summary>
		Private Sub InitializeComponent()
			Me.pictureBox1 = New PictureBox()
			Me.label1 = New Label()
			Me.comboBoxType = New ComboBox()
			Me.label2 = New Label()
			Me.comboBoxText = New ComboBox()
			Me.textBoxText = New TextBox()
			Me.label4 = New Label()
			Me.textBoxSize = New TextBox()
			Me.btnCreate = New Button()
			Me.btnScan = New Button()
			Me.label5 = New Label()
			Me.label6 = New Label()
			Me.comboBoxFont = New ComboBox()
			Me.comboBoxColor = New ComboBox()
			Me.checkBoxText = New CheckBox()
			Me.checkBoxBorder = New CheckBox()
			Me.checkBoxSum = New CheckBox()
			Me.label7 = New Label()
			Me.textBoxHeight = New TextBox()
			Me.label3 = New Label()
			Me.label8 = New Label()
			Me.textBox1 = New TextBox()
			CType(Me.pictureBox1, System.ComponentModel.ISupportInitialize).BeginInit()
			Me.SuspendLayout()
			' 
			' pictureBox1
			' 
			Me.pictureBox1.Image = My.Resources.img
			Me.pictureBox1.Location = New Point(-1, -1)
			Me.pictureBox1.Name = "pictureBox1"
			Me.pictureBox1.Size = New Size(560, 377)
			Me.pictureBox1.TabIndex = 0
			Me.pictureBox1.TabStop = False
			' 
			' label1
			' 
			Me.label1.AutoSize = True
			Me.label1.Location = New Point(42, 129)
			Me.label1.Name = "label1"
			Me.label1.Size = New Size(83, 12)
			Me.label1.TabIndex = 1
			Me.label1.Text = "Barcode Type:"
			' 
			' comboBoxType
			' 
			Me.comboBoxType.FormattingEnabled = True
			Me.comboBoxType.Items.AddRange(New Object() { "Codabar", "Code11", "Code25", "Interleaved25", "Code39", "Code39Extended", "Code93", "Code93Extended", "Code128", "EAN8", "EAN13", "EAN128", "EAN14", "SCC14", "SSCC18", "ITF14", "ITF6", "UPCA", "UPCE", "PostNet", "Planet", "MSI", "DataMatrix", "QRCode", "Pdf417", "Pdf417Macro", "RSS14", "RSS14Truncated", "RSSLimited", "RSSExpanded", "USPS", "SwissPostParcel", "PZN", "OPC", "DeutschePostIdentcode", "DeutschePostleitcode", "RoyalMail4State", "SingaporePost4State"})
			Me.comboBoxType.Location = New Point(128, 127)
			Me.comboBoxType.Name = "comboBoxType"
			Me.comboBoxType.Size = New Size(153, 20)
			Me.comboBoxType.TabIndex = 2
			Me.comboBoxType.Text = "Code128"
			' 
			' label2
			' 
			Me.label2.AutoSize = True
			Me.label2.Location = New Point(42, 203)
			Me.label2.Name = "label2"
			Me.label2.Size = New Size(83, 12)
			Me.label2.TabIndex = 3
			Me.label2.Text = "Barcode Text:"
			' 
			' comboBoxText
			' 
			Me.comboBoxText.FormattingEnabled = True
			Me.comboBoxText.Items.AddRange(New Object() { "Solid", "Dash", "Dot", "DashDot", "DashDotDot"})
			Me.comboBoxText.Location = New Point(404, 125)
			Me.comboBoxText.Name = "comboBoxText"
			Me.comboBoxText.Size = New Size(121, 20)
			Me.comboBoxText.TabIndex = 4
			Me.comboBoxText.Text = "Solid"
			' 
			' textBoxText
			' 
			Me.textBoxText.Location = New Point(128, 203)
			Me.textBoxText.Name = "textBoxText"
			Me.textBoxText.Size = New Size(82, 21)
			Me.textBoxText.TabIndex = 5
			Me.textBoxText.Text = "12345"
			' 
			' label4
			' 
			Me.label4.AutoSize = True
			Me.label4.Location = New Point(384, 203)
			Me.label4.Name = "label4"
			Me.label4.Size = New Size(65, 12)
			Me.label4.TabIndex = 7
			Me.label4.Text = "Font Size:"
			' 
			' textBoxSize
			' 
			Me.textBoxSize.Location = New Point(452, 203)
			Me.textBoxSize.Name = "textBoxSize"
			Me.textBoxSize.Size = New Size(73, 21)
			Me.textBoxSize.TabIndex = 8
			Me.textBoxSize.Text = "8"
			' 
			' btnCreate
			' 
			Me.btnCreate.Location = New Point(173, 333)
			Me.btnCreate.Name = "btnCreate"
			Me.btnCreate.Size = New Size(75, 23)
			Me.btnCreate.TabIndex = 9
			Me.btnCreate.Text = "Create"
			Me.btnCreate.UseVisualStyleBackColor = True
'			Me.btnCreate.Click += New System.EventHandler(Me.btnCreate_Click)
			' 
			' btnScan
			' 
			Me.btnScan.Location = New Point(362, 332)
			Me.btnScan.Name = "btnScan"
			Me.btnScan.Size = New Size(75, 23)
			Me.btnScan.TabIndex = 10
			Me.btnScan.Text = "Scan"
			Me.btnScan.UseVisualStyleBackColor = True
'			Me.btnScan.Click += New System.EventHandler(Me.btnScan_Click)
			' 
			' label5
			' 
			Me.label5.AutoSize = True
			Me.label5.Location = New Point(42, 165)
			Me.label5.Name = "label5"
			Me.label5.Size = New Size(77, 12)
			Me.label5.TabIndex = 11
			Me.label5.Text = "Font Family:"
			' 
			' label6
			' 
			Me.label6.AutoSize = True
			Me.label6.Location = New Point(320, 165)
			Me.label6.Name = "label6"
			Me.label6.Size = New Size(71, 12)
			Me.label6.TabIndex = 12
			Me.label6.Text = "Fore Color:"
			' 
			' comboBoxFont
			' 
			Me.comboBoxFont.FormattingEnabled = True
			Me.comboBoxFont.Items.AddRange(New Object() { "Cambria", "Calibri", "Arial", "Verdana", "Arial Black", "Arial Narrow", "SimSun", "Corbel", ""})
			Me.comboBoxFont.Location = New Point(128, 165)
			Me.comboBoxFont.Name = "comboBoxFont"
			Me.comboBoxFont.Size = New Size(153, 20)
			Me.comboBoxFont.TabIndex = 14
			Me.comboBoxFont.Text = "Verdana"
			' 
			' comboBoxColor
			' 
			Me.comboBoxColor.ForeColor = SystemColors.InfoText
			Me.comboBoxColor.FormattingEnabled = True
			Me.comboBoxColor.Items.AddRange(New Object() { "AliceBlue", "AntiqueWhite", "Aqua", "Aquamarine", "Azure", "Beige", "Bisque", "Black", "BlanchedAlmond", "Blue", "BlueViolet", "Brown", "BurlyWood", "CadetBlue", "Chocolate", "Coral", "DarkBlue", "DarkGreen", "Goldenrod", "GreenYellow", "SteelBlue"})
			Me.comboBoxColor.Location = New Point(404, 165)
			Me.comboBoxColor.Name = "comboBoxColor"
			Me.comboBoxColor.Size = New Size(121, 20)
			Me.comboBoxColor.TabIndex = 15
			Me.comboBoxColor.Text = "Black"
			' 
			' checkBoxText
			' 
			Me.checkBoxText.AutoSize = True
			Me.checkBoxText.Checked = True
			Me.checkBoxText.CheckState = CheckState.Checked
			Me.checkBoxText.Location = New Point(42, 241)
			Me.checkBoxText.Name = "checkBoxText"
			Me.checkBoxText.Size = New Size(78, 16)
			Me.checkBoxText.TabIndex = 16
			Me.checkBoxText.Text = "Show Text"
			Me.checkBoxText.UseVisualStyleBackColor = True
			' 
			' checkBoxBorder
			' 
			Me.checkBoxBorder.AutoSize = True
			Me.checkBoxBorder.Location = New Point(224, 241)
			Me.checkBoxBorder.Name = "checkBoxBorder"
			Me.checkBoxBorder.Size = New Size(90, 16)
			Me.checkBoxBorder.TabIndex = 17
			Me.checkBoxBorder.Text = "Show Border"
			Me.checkBoxBorder.UseVisualStyleBackColor = True
			' 
			' checkBoxSum
			' 
			Me.checkBoxSum.AutoSize = True
			Me.checkBoxSum.Checked = True
			Me.checkBoxSum.CheckState = CheckState.Checked
			Me.checkBoxSum.Location = New Point(386, 241)
			Me.checkBoxSum.Name = "checkBoxSum"
			Me.checkBoxSum.Size = New Size(102, 16)
			Me.checkBoxSum.TabIndex = 18
			Me.checkBoxSum.Text = "Show CheckSum"
			Me.checkBoxSum.UseVisualStyleBackColor = True
			' 
			' label7
			' 
			Me.label7.AutoSize = True
			Me.label7.Location = New Point(222, 203)
			Me.label7.Name = "label7"
			Me.label7.Size = New Size(71, 12)
			Me.label7.TabIndex = 19
			Me.label7.Text = "Bar Height:"
			' 
			' textBoxHeight
			' 
			Me.textBoxHeight.Location = New Point(299, 203)
			Me.textBoxHeight.Name = "textBoxHeight"
			Me.textBoxHeight.Size = New Size(62, 21)
			Me.textBoxHeight.TabIndex = 20
			Me.textBoxHeight.Text = "15"
			' 
			' label3
			' 
			Me.label3.AutoSize = True
			Me.label3.Location = New Point(320, 130)
			Me.label3.Name = "label3"
			Me.label3.Size = New Size(77, 12)
			Me.label3.TabIndex = 6
			Me.label3.Text = "Border Type:"
			' 
			' label8
			' 
			Me.label8.AutoSize = True
			Me.label8.Location = New Point(44, 282)
			Me.label8.Name = "label8"
			Me.label8.Size = New Size(77, 12)
			Me.label8.TabIndex = 21
			Me.label8.Text = "Scan Result:"
			' 
			' textBox1
			' 
			Me.textBox1.Location = New Point(128, 279)
			Me.textBox1.Name = "textBox1"
			Me.textBox1.Size = New Size(100, 21)
			Me.textBox1.TabIndex = 22
			' 
			' Form1
			' 
			Me.AutoScaleDimensions = New SizeF(6F, 12F)
			Me.AutoScaleMode = AutoScaleMode.Font
			Me.ClientSize = New Size(558, 376)
			Me.Controls.Add(Me.textBox1)
			Me.Controls.Add(Me.label8)
			Me.Controls.Add(Me.textBoxHeight)
			Me.Controls.Add(Me.label7)
			Me.Controls.Add(Me.checkBoxSum)
			Me.Controls.Add(Me.checkBoxBorder)
			Me.Controls.Add(Me.checkBoxText)
			Me.Controls.Add(Me.comboBoxColor)
			Me.Controls.Add(Me.comboBoxFont)
			Me.Controls.Add(Me.label6)
			Me.Controls.Add(Me.label5)
			Me.Controls.Add(Me.btnScan)
			Me.Controls.Add(Me.btnCreate)
			Me.Controls.Add(Me.textBoxSize)
			Me.Controls.Add(Me.label4)
			Me.Controls.Add(Me.label3)
			Me.Controls.Add(Me.textBoxText)
			Me.Controls.Add(Me.comboBoxText)
			Me.Controls.Add(Me.label2)
			Me.Controls.Add(Me.comboBoxType)
			Me.Controls.Add(Me.label1)
			Me.Controls.Add(Me.pictureBox1)
			Me.Name = "Form1"
			Me.Text = "Barcode"
			CType(Me.pictureBox1, System.ComponentModel.ISupportInitialize).EndInit()
			Me.ResumeLayout(False)
			Me.PerformLayout()

		End Sub

		#End Region

		Private pictureBox1 As PictureBox
		Private label1 As Label
		Private comboBoxType As ComboBox
		Private label2 As Label
		Private comboBoxText As ComboBox
		Private textBoxText As TextBox
		Private label4 As Label
		Private textBoxSize As TextBox
		Private WithEvents btnCreate As Button
		Private WithEvents btnScan As Button
		Private label5 As Label
		Private label6 As Label
		Private comboBoxFont As ComboBox
		Private comboBoxColor As ComboBox
		Private checkBoxText As CheckBox
		Private checkBoxBorder As CheckBox
		Private checkBoxSum As CheckBox
		Private label7 As Label
		Private textBoxHeight As TextBox
		Private label3 As Label
		Private label8 As Label
		Private textBox1 As TextBox
	End Class
End Namespace

