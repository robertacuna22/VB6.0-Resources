Imports System.Windows.Forms
Imports System.Drawing

Namespace barcodeWinform
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
            Dim resources As New System.ComponentModel.ComponentResourceManager(GetType(Form1))
            Me.button1 = New Button()
            Me.button2 = New Button()
            Me.lblResult = New Label()
            Me.label1 = New Label()
            Me.label2 = New Label()
            Me.textBox1 = New TextBox()
            Me.textBoxHeight = New TextBox()
            Me.label7 = New Label()
            Me.checkBoxSum = New CheckBox()
            Me.checkBoxBorder = New CheckBox()
            Me.checkBoxText = New CheckBox()
            Me.comboBoxColor = New ComboBox()
            Me.comboBoxFont = New ComboBox()
            Me.label6 = New Label()
            Me.label5 = New Label()
            Me.textBoxSize = New TextBox()
            Me.label4 = New Label()
            Me.label3 = New Label()
            Me.textBoxText = New TextBox()
            Me.comboBoxText = New ComboBox()
            Me.label8 = New Label()
            Me.comboBoxType = New ComboBox()
            Me.label9 = New Label()
            Me.barCodeControl1 = New Spire.Barcode.Forms.BarCodeControl()
            Me.SuspendLayout()
            ' 
            ' button1
            ' 
            Me.button1.Font = New Font("SimSun", 9.75F, FontStyle.Regular, GraphicsUnit.Point, (CByte(134)))
            Me.button1.Location = New Point(274, 485)
            Me.button1.Name = "button1"
            Me.button1.Size = New Size(75, 30)
            Me.button1.TabIndex = 1
            Me.button1.Text = "Save"
            Me.button1.UseVisualStyleBackColor = True
            '			Me.button1.Click += New System.EventHandler(Me.button1_Click)
            ' 
            ' button2
            ' 
            Me.button2.Font = New Font("SimSun", 9.75F, FontStyle.Regular, GraphicsUnit.Point, (CByte(134)))
            Me.button2.Location = New Point(433, 485)
            Me.button2.Name = "button2"
            Me.button2.Size = New Size(75, 30)
            Me.button2.TabIndex = 1
            Me.button2.Text = "Scan"
            Me.button2.UseVisualStyleBackColor = True
            '			Me.button2.Click += New System.EventHandler(Me.button2_Click)
            ' 
            ' lblResult
            ' 
            Me.lblResult.AutoSize = True
            Me.lblResult.Location = New Point(33, 447)
            Me.lblResult.Name = "lblResult"
            Me.lblResult.Size = New Size(83, 12)
            Me.lblResult.TabIndex = 2
            Me.lblResult.Text = "Scan Result :"
            ' 
            ' label1
            ' 
            Me.label1.Font = New Font("Verdana", 11.25F, FontStyle.Bold, GraphicsUnit.Point, (CByte(0)))
            Me.label1.ForeColor = Color.SteelBlue
            Me.label1.Location = New Point(30, 9)
            Me.label1.Name = "label1"
            Me.label1.Size = New Size(602, 98)
            Me.label1.TabIndex = 4
            Me.label1.Text = resources.GetString("label1.Text")
            ' 
            ' label2
            ' 
            Me.label2.AutoSize = True
            Me.label2.Location = New Point(31, 174)
            Me.label2.Name = "label2"
            Me.label2.Size = New Size(95, 12)
            Me.label2.TabIndex = 5
            Me.label2.Text = "barcodeControl:"
            ' 
            ' textBox1
            ' 
            Me.textBox1.Location = New Point(119, 443)
            Me.textBox1.Name = "textBox1"
            Me.textBox1.Size = New Size(100, 21)
            Me.textBox1.TabIndex = 7
            ' 
            ' textBoxHeight
            ' 
            Me.textBoxHeight.Location = New Point(290, 361)
            Me.textBoxHeight.Name = "textBoxHeight"
            Me.textBoxHeight.Size = New Size(62, 21)
            Me.textBoxHeight.TabIndex = 37
            Me.textBoxHeight.Text = "15"
            '			Me.textBoxHeight.TextChanged += New System.EventHandler(Me.textBoxHeight_TextChanged)
            ' 
            ' label7
            ' 
            Me.label7.AutoSize = True
            Me.label7.Location = New Point(213, 361)
            Me.label7.Name = "label7"
            Me.label7.Size = New Size(71, 12)
            Me.label7.TabIndex = 36
            Me.label7.Text = "Bar Height:"
            ' 
            ' checkBoxSum
            ' 
            Me.checkBoxSum.AutoSize = True
            Me.checkBoxSum.Checked = True
            Me.checkBoxSum.CheckState = CheckState.Checked
            Me.checkBoxSum.Location = New Point(377, 399)
            Me.checkBoxSum.Name = "checkBoxSum"
            Me.checkBoxSum.Size = New Size(102, 16)
            Me.checkBoxSum.TabIndex = 35
            Me.checkBoxSum.Text = "Show CheckSum"
            Me.checkBoxSum.UseVisualStyleBackColor = True
            '			Me.checkBoxSum.CheckedChanged += New System.EventHandler(Me.checkBoxSum_CheckedChanged)
            Me.barCodeControl1.ShowCheckSumChar = Me.checkBoxSum.Checked
            ' 
            ' checkBoxBorder
            ' 
            Me.checkBoxBorder.AutoSize = True
            Me.checkBoxBorder.Location = New Point(215, 399)
            Me.checkBoxBorder.Name = "checkBoxBorder"
            Me.checkBoxBorder.Size = New Size(90, 16)
            Me.checkBoxBorder.TabIndex = 34
            Me.checkBoxBorder.Text = "Show Border"
            Me.checkBoxBorder.UseVisualStyleBackColor = True
            '			Me.checkBoxBorder.CheckedChanged += New System.EventHandler(Me.checkBoxBorder_CheckedChanged)
            ' 
            ' checkBoxText
            ' 
            Me.checkBoxText.AutoSize = True
            Me.checkBoxText.Checked = True
            Me.checkBoxText.CheckState = CheckState.Checked
            Me.checkBoxText.Location = New Point(33, 399)
            Me.checkBoxText.Name = "checkBoxText"
            Me.checkBoxText.Size = New Size(78, 16)
            Me.checkBoxText.TabIndex = 33
            Me.checkBoxText.Text = "Show Text"
            Me.checkBoxText.UseVisualStyleBackColor = True
            '			Me.checkBoxText.CheckedChanged += New System.EventHandler(Me.checkBoxText_CheckedChanged)
            ' 
            ' comboBoxColor
            ' 
            Me.comboBoxColor.ForeColor = SystemColors.InfoText
            Me.comboBoxColor.FormattingEnabled = True
            Me.comboBoxColor.Items.AddRange(New Object() {"AliceBlue", "AntiqueWhite", "Aqua", "Aquamarine", "Azure", "Beige", "Bisque", "Black", "BlanchedAlmond", "Blue", "BlueViolet", "Brown", "BurlyWood", "CadetBlue", "Chocolate", "Coral", "DarkBlue", "DarkGreen", "Goldenrod", "GreenYellow", "SteelBlue"})
            Me.comboBoxColor.Location = New Point(395, 323)
            Me.comboBoxColor.Name = "comboBoxColor"
            Me.comboBoxColor.Size = New Size(121, 20)
            Me.comboBoxColor.TabIndex = 32
            Me.comboBoxColor.Text = "Black"
            '			Me.comboBoxColor.SelectedIndexChanged += New System.EventHandler(Me.comboBoxColor_SelectedIndexChanged)
            ' 
            ' comboBoxFont
            ' 
            Me.comboBoxFont.FormattingEnabled = True
            Me.comboBoxFont.Items.AddRange(New Object() {"Cambria", "Calibri", "Arial", "Verdana", "Arial Black", "Arial Narrow", "SimSun", "Corbel", ""})
            Me.comboBoxFont.Location = New Point(119, 323)
            Me.comboBoxFont.Name = "comboBoxFont"
            Me.comboBoxFont.Size = New Size(153, 20)
            Me.comboBoxFont.TabIndex = 31
            Me.comboBoxFont.Text = "Verdana"
            '			Me.comboBoxFont.SelectedIndexChanged += New System.EventHandler(Me.comboBoxFont_SelectedIndexChanged)
            ' 
            ' label6
            ' 
            Me.label6.AutoSize = True
            Me.label6.Location = New Point(311, 323)
            Me.label6.Name = "label6"
            Me.label6.Size = New Size(71, 12)
            Me.label6.TabIndex = 30
            Me.label6.Text = "Fore Color:"
            ' 
            ' label5
            ' 
            Me.label5.AutoSize = True
            Me.label5.Location = New Point(33, 323)
            Me.label5.Name = "label5"
            Me.label5.Size = New Size(77, 12)
            Me.label5.TabIndex = 29
            Me.label5.Text = "Font Family:"
            ' 
            ' textBoxSize
            ' 
            Me.textBoxSize.Location = New Point(443, 361)
            Me.textBoxSize.Name = "textBoxSize"
            Me.textBoxSize.Size = New Size(73, 21)
            Me.textBoxSize.TabIndex = 28
            Me.textBoxSize.Text = "8"
            '			Me.textBoxSize.TextChanged += New System.EventHandler(Me.textBoxSize_TextChanged)
            ' 
            ' label4
            ' 
            Me.label4.AutoSize = True
            Me.label4.Location = New Point(375, 361)
            Me.label4.Name = "label4"
            Me.label4.Size = New Size(65, 12)
            Me.label4.TabIndex = 27
            Me.label4.Text = "Font Size:"
            ' 
            ' label3
            ' 
            Me.label3.AutoSize = True
            Me.label3.Location = New Point(311, 288)
            Me.label3.Name = "label3"
            Me.label3.Size = New Size(77, 12)
            Me.label3.TabIndex = 26
            Me.label3.Text = "Border Type:"
            ' 
            ' textBoxText
            ' 
            Me.textBoxText.Location = New Point(119, 361)
            Me.textBoxText.Name = "textBoxText"
            Me.textBoxText.Size = New Size(82, 21)
            Me.textBoxText.TabIndex = 25
            Me.textBoxText.Text = "12345"
            '			Me.textBoxText.TextChanged += New System.EventHandler(Me.textBoxText_TextChanged)
            ' 
            ' comboBoxText
            ' 
            Me.comboBoxText.FormattingEnabled = True
            Me.comboBoxText.Items.AddRange(New Object() {"Solid", "Dash", "Dot", "DashDot", "DashDotDot"})
            Me.comboBoxText.Location = New Point(395, 283)
            Me.comboBoxText.Name = "comboBoxText"
            Me.comboBoxText.Size = New Size(121, 20)
            Me.comboBoxText.TabIndex = 24
            Me.comboBoxText.Text = "Solid"
            '			Me.comboBoxText.SelectedIndexChanged += New System.EventHandler(Me.comboBoxText_SelectedIndexChanged)
            ' 
            ' label8
            ' 
            Me.label8.AutoSize = True
            Me.label8.Location = New Point(33, 361)
            Me.label8.Name = "label8"
            Me.label8.Size = New Size(83, 12)
            Me.label8.TabIndex = 23
            Me.label8.Text = "Barcode Text:"
            ' 
            ' comboBoxType
            ' 
            Me.comboBoxType.FormattingEnabled = True
            Me.comboBoxType.Items.AddRange(New Object() {"Codabar", "Code11", "Code25", "Interleaved25", "Code39", "Code39Extended", "Code93", "Code93Extended", "Code128", "EAN8", "EAN13", "EAN128", "EAN14", "SCC14", "SSCC18", "ITF14", "ITF6", "UPCA", "UPCE", "PostNet", "Planet", "MSI", "DataMatrix", "QRCode", "Pdf417", "Pdf417Macro", "RSS14", "RSS14Truncated", "RSSLimited", "RSSExpanded", "USPS", "SwissPostParcel", "PZN", "OPC", "DeutschePostIdentcode", "DeutschePostleitcode", "RoyalMail4State", "SingaporePost4State"})
            Me.comboBoxType.Location = New Point(119, 285)
            Me.comboBoxType.Name = "comboBoxType"
            Me.comboBoxType.Size = New Size(153, 20)
            Me.comboBoxType.TabIndex = 22
            Me.comboBoxType.Text = "Code128"
            '			Me.comboBoxType.SelectedIndexChanged += New System.EventHandler(Me.comboBoxType_SelectedIndexChanged)
            ' 
            ' label9
            ' 
            Me.label9.AutoSize = True
            Me.label9.Location = New Point(33, 287)
            Me.label9.Name = "label9"
            Me.label9.Size = New Size(83, 12)
            Me.label9.TabIndex = 21
            Me.label9.Text = "Barcode Type:"
            ' 
            ' barCodeControl1
            ' 
            Me.barCodeControl1.BarHeight = 20.0F
            Me.barCodeControl1.BorderColor = SystemColors.GradientActiveCaption
            Me.barCodeControl1.BorderWidth = 0.6F
            Me.barCodeControl1.DpiX = 96.0F
            Me.barCodeControl1.DpiY = 96.0F
            Me.barCodeControl1.Font = New Font("Verdana", 8.0F)
            Me.barCodeControl1.ImageHeight = 30.0F
            Me.barCodeControl1.ImageWidth = 120.0F
            Me.barCodeControl1.Location = New Point(133, 131)
            Me.barCodeControl1.Name = "barCodeControl1"
            Me.barCodeControl1.Rotate = 0.0F
            Me.barCodeControl1.Size = New Size(189, 107)
            Me.barCodeControl1.SupSpace = 4.0F
            Me.barCodeControl1.TabIndex = 6
            Me.barCodeControl1.TextFont = New Font("Arial", 9.75F, FontStyle.Italic, GraphicsUnit.Point, (CByte(0)))
            Me.barCodeControl1.TopText = "Spire Demo"
            Me.barCodeControl1.TopTextFont = New Font("Arial", 8.0F)
            Me.barCodeControl1.UseChecksum = Spire.Barcode.CheckSumMode.Auto
            Me.barCodeControl1.WideNarrowRatio = 3.0F
            Me.barCodeControl1.XYRatio = 0.0F
            Me.barCodeControl1.Y = 2.0F
            ' 
            ' Form1
            ' 
            Me.AutoScaleDimensions = New SizeF(6.0F, 12.0F)
            Me.AutoScaleMode = AutoScaleMode.Font
            Me.ClientSize = New Size(636, 530)
            Me.Controls.Add(Me.textBoxHeight)
            Me.Controls.Add(Me.label7)
            Me.Controls.Add(Me.checkBoxSum)
            Me.Controls.Add(Me.checkBoxBorder)
            Me.Controls.Add(Me.checkBoxText)
            Me.Controls.Add(Me.comboBoxColor)
            Me.Controls.Add(Me.comboBoxFont)
            Me.Controls.Add(Me.label6)
            Me.Controls.Add(Me.label5)
            Me.Controls.Add(Me.textBoxSize)
            Me.Controls.Add(Me.label4)
            Me.Controls.Add(Me.label3)
            Me.Controls.Add(Me.textBoxText)
            Me.Controls.Add(Me.comboBoxText)
            Me.Controls.Add(Me.label8)
            Me.Controls.Add(Me.comboBoxType)
            Me.Controls.Add(Me.label9)
            Me.Controls.Add(Me.textBox1)
            Me.Controls.Add(Me.barCodeControl1)
            Me.Controls.Add(Me.label2)
            Me.Controls.Add(Me.label1)
            Me.Controls.Add(Me.lblResult)
            Me.Controls.Add(Me.button2)
            Me.Controls.Add(Me.button1)
            Me.Name = "Form1"
            Me.Text = "BarcodeControl"
            Me.ResumeLayout(False)
            Me.PerformLayout()

        End Sub

#End Region

        Private WithEvents button1 As Button
        Private WithEvents button2 As Button
        Private lblResult As Label
        Private label1 As Label
        Private label2 As Label
        Private barCodeControl1 As Spire.Barcode.Forms.BarCodeControl
        Private textBox1 As TextBox
        Private WithEvents textBoxHeight As TextBox
        Private label7 As Label
        Private WithEvents checkBoxSum As CheckBox
        Private WithEvents checkBoxBorder As CheckBox
        Private WithEvents checkBoxText As CheckBox
        Private WithEvents comboBoxColor As ComboBox
        Private WithEvents comboBoxFont As ComboBox
        Private label6 As Label
        Private label5 As Label
        Private WithEvents textBoxSize As TextBox
        Private label4 As Label
        Private label3 As Label
        Private WithEvents textBoxText As TextBox
        Private WithEvents comboBoxText As ComboBox
        Private label8 As Label
        Private WithEvents comboBoxType As ComboBox
        Private label9 As Label

    End Class
End Namespace

