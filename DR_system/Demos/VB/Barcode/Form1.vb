Imports System.ComponentModel
Imports System.Text
Imports System.Drawing.Drawing2D

Imports Spire.Barcode

Namespace Barcode
	Partial Public Class Form1
		Inherits Form
		Public settings As BarcodeSettings
		Public Sub New()
			InitializeComponent()
		End Sub

		Private Sub btnCreate_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnCreate.Click
			'set the configuration of barcode
			settings = New BarcodeSettings()
			Dim data As String = "12345"
			Dim type As String = "Code128"
			If Me.textBoxText.Text IsNot Nothing AndAlso Me.textBoxText.Text.Length > 0 Then
				data = Me.textBoxText.Text
			End If

            settings.Data2D = data
            settings.Data = Me.textBoxText.Text

			If comboBoxType.SelectedItem IsNot Nothing Then
				type = comboBoxType.SelectedItem.ToString()
			End If
			settings.Type = CType(System.Enum.Parse(GetType(BarCodeType), type), BarCodeType)

            If Me.checkBoxBorder.Checked Then
                If comboBoxText.SelectedItem IsNot Nothing Then
                    settings.HasBorder = True
                    settings.BorderDashStyle = CType(System.Enum.Parse(GetType(DashStyle), comboBoxText.SelectedItem.ToString()), DashStyle)
                End If
            End If

            Dim fontSize As Short = 8
            Dim font As String = "SimSun"
            If Me.comboBoxFont.SelectedItem IsNot Nothing Then
                font = Me.comboBoxFont.SelectedItem.ToString()
            End If

            If Me.textBoxSize.Text IsNot Nothing AndAlso Me.textBoxSize.Text.Length > 0 AndAlso Int16.TryParse(Me.textBoxSize.Text, fontSize) Then
                If font IsNot Nothing AndAlso font.Length > 0 Then
                    settings.TextFont = New Font(font, fontSize, FontStyle.Bold)
                End If
            End If

            Dim barHeight As Short = 15
            If Me.textBoxHeight.Text IsNot Nothing AndAlso Me.textBoxHeight.Text.Length > 0 AndAlso Int16.TryParse(Me.textBoxHeight.Text, barHeight) Then
                settings.BarHeight = barHeight
            End If
            If Me.checkBoxText.Checked Then
                settings.ShowText = True
            Else
                settings.ShowText = False
            End If

            If Me.checkBoxSum.Checked Then
                settings.ShowCheckSumChar = True
            Else
                settings.ShowCheckSumChar = False
            End If

            If Me.comboBoxColor.SelectedItem IsNot Nothing Then
                Dim foreColor As String = Me.comboBoxColor.SelectedItem.ToString()
                settings.ForeColor = Color.FromName(foreColor)
            End If

            'generate the barcode use the settings
            Dim generator As New BarCodeGenerator(settings)
            Dim barcode As Image = generator.GenerateImage()

            'save the barcode as an image
            barcode.Save("..\..\..\..\Data\barcode.png")

            'launch the generated barcode image
            Process.Start("..\..\..\..\Data\barcode.png")
		End Sub

		Private Sub btnScan_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnScan.Click
			'scan the barcode
            Dim datas() As String = BarcodeScanner.Scan("..\..\..\..\Data\barcode.png")

			'show the scan result
			Me.textBox1.Text = datas(0)
		End Sub
	End Class
End Namespace
