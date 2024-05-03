Imports System
Imports System.ComponentModel
Imports System.Text
Imports System.Drawing.Drawing2D
Imports System.Windows.Forms
Imports System.Drawing
Imports System.Diagnostics
Imports Spire.Barcode.Forms
Imports Spire.Barcode

Namespace barcodeWinform
	Partial Public Class Form1
		Inherits Form
		Public Sub New()
			InitializeComponent()
		End Sub

		Private Sub button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles button1.Click
			Me.barCodeControl1.SaveToFile("test.png")
			Process.Start("test.png")
		End Sub

		Private Sub button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles button2.Click
			Dim barcodes() As String = Spire.Barcode.BarcodeScanner.Scan(Me.barCodeControl1.GenerateImage())
			If barcodes.Length > 0 Then
				Me.textBox1.Text = barcodes(0)
			End If
		End Sub

		Private Sub comboBoxType_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles comboBoxType.SelectedIndexChanged
			Dim barcodeType As String = (TryCast(sender, ComboBox)).SelectedItem.ToString()
			Me.barCodeControl1.Type = CType(System.Enum.Parse(GetType(BarCodeType), barcodeType), BarCodeType)
		End Sub

		Private Sub comboBoxText_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles comboBoxText.SelectedIndexChanged
			Dim borderType As String = (TryCast(sender, ComboBox)).SelectedItem.ToString()
			Me.barCodeControl1.BorderDashStyle = CType(System.Enum.Parse(GetType(DashStyle), borderType), DashStyle)
		End Sub

		Private Sub comboBoxFont_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles comboBoxFont.SelectedIndexChanged
			Dim fontName As String = (TryCast(sender, ComboBox)).SelectedItem.ToString()
            Me.barCodeControl1.Font = New Font(fontName, 8.0F)
		End Sub

		Private Sub comboBoxColor_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles comboBoxColor.SelectedIndexChanged
            Dim colorName As String = (TryCast(sender, ComboBox)).SelectedItem.ToString()
            Me.barCodeControl1.ForeColor = Color.FromName(colorName)
		End Sub

		Private Sub textBoxText_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles textBoxText.TextChanged
            If (TryCast(sender, TextBox)).Text IsNot Nothing Then
                Me.barCodeControl1.Data = (TryCast(sender, TextBox)).Text
                Me.barCodeControl1.Data2D = (TryCast(sender, TextBox)).Text
            End If
        End Sub

		Private Sub textBoxHeight_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles textBoxHeight.TextChanged
			Dim height As String = (TryCast(sender, TextBox)).Text
			Dim validHeight As Short = 15
			If Int16.TryParse(height, validHeight) Then
				validHeight = Int16.Parse(height)
			End If
			Me.barCodeControl1.BarHeight = validHeight
		End Sub

		Private Sub textBoxSize_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles textBoxSize.TextChanged
			Dim fontSize As String = (TryCast(sender, TextBox)).Text
			Dim validSize As Short = 15

			Dim fontName As String = "SimSun"
			If Int16.TryParse(fontSize, validSize) Then
				validSize = Int16.Parse(fontSize)
			End If
			If Me.comboBoxFont.SelectedItem IsNot Nothing Then
				fontName = Me.comboBoxFont.SelectedItem.ToString()
			End If
			Me.barCodeControl1.Font = New Font(fontName, validSize)
		End Sub

		Private Sub checkBoxText_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles checkBoxText.CheckedChanged
			Me.barCodeControl1.ShowText = (TryCast(sender, CheckBox)).Checked
		End Sub

		Private Sub checkBoxBorder_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles checkBoxBorder.CheckedChanged
			Me.barCodeControl1.HasBorder = (TryCast(sender, CheckBox)).Checked
		End Sub

		Private Sub checkBoxSum_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles checkBoxSum.CheckedChanged
			Me.barCodeControl1.ShowCheckSumChar = (TryCast(sender, CheckBox)).Checked
		End Sub
	End Class
End Namespace
