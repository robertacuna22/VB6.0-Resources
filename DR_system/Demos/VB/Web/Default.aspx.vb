Imports System
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Drawing.Drawing2D
Imports System.IO
Imports System.Drawing
Imports System.Drawing.Imaging

Imports Spire.Barcode

Namespace WebApplication3
	Partial Public Class _Default
		Inherits System.Web.UI.Page
		Protected fontName As String="Verdana"
		Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
			Me.BarCodeControl1.ShowCheckSumChar = Me.checkShowSum.Checked
		End Sub

		Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs)
			Dim stream As Stream = New MemoryStream()
			Me.BarCodeControl1.SaveToStream(stream, ImageFormat.Png)
			Dim datas() As String = Spire.Barcode.BarcodeScanner.Scan(stream)
			Me.lblResult.Visible = True
			Me.lblResult.Text = datas(0)

			Me.lblResult.ForeColor = Color.Red
		End Sub

		Protected Sub OnTypeChanged(ByVal sender As Object, ByVal e As EventArgs)
			Dim barcodeType As String=Me.dropDownListType.SelectedItem.ToString()
			Me.BarCodeControl1.Type = CType(System.Enum.Parse(GetType(BarCodeType), barcodeType), BarCodeType)
		End Sub

		Protected Sub OnBorderChanged(ByVal sender As Object, ByVal e As EventArgs)
			If Me.checkShowBorder.Checked Then
				Dim border As String = Me.borderType.SelectedItem.ToString()
				Me.BarCodeControl1.HasBorder = True
				Me.BarCodeControl1.BorderDashStyle = CType(System.Enum.Parse(GetType(DashStyle), border), DashStyle)
			End If
		End Sub

		Protected Sub OnForeColorChanged(ByVal sender As Object, ByVal e As EventArgs)
			Dim colorName As String = Me.DropDownListColor.SelectedItem.ToString()
			Me.BarCodeControl1.ForeColor = Color.FromName(colorName)
			Me.lblResult.Text = colorName
		End Sub

		Protected Sub OnShowBorderChanged(ByVal sender As Object, ByVal e As EventArgs)
			Me.BarCodeControl1.HasBorder = Me.checkShowBorder.Checked
		End Sub

		Protected Sub OnFontChanged(ByVal sender As Object, ByVal e As EventArgs)
			fontName = Me.dropFont.SelectedItem.ToString()
			Dim fontSize As Short = 8
			If Me.textBoxFontSize.Text IsNot Nothing AndAlso Me.textBoxFontSize.Text.Length > 0 Then
				If Int16.TryParse(Me.textBoxFontSize.Text, fontSize) Then
					fontSize = Int16.Parse(Me.textBoxFontSize.Text)
				End If
			End If
			Me.BarCodeControl1.TextFont = New Font(fontName,fontSize)
		End Sub

		Protected Sub OnFontSizeChanged(ByVal sender As Object, ByVal e As EventArgs)
			 Dim fontSize As Short = 8
			If Me.textBoxFontSize.Text IsNot Nothing AndAlso Me.textBoxFontSize.Text.Length > 0 Then
				If Int16.TryParse(Me.textBoxFontSize.Text, fontSize) Then
					fontSize = Int16.Parse(Me.textBoxFontSize.Text)
				End If
			End If
			Me.BarCodeControl1.TextFont = New Font(fontName,fontSize)
		End Sub

		Protected Sub OnBarHeightChanged(ByVal sender As Object, ByVal e As EventArgs)
			Dim barHeight As Short = 15
			If Me.textBoxHeight.Text IsNot Nothing AndAlso Me.textBoxHeight.Text.Length > 0 Then
				If Int16.TryParse(Me.textBoxHeight.Text,barHeight) Then
					barHeight=Int16.Parse(Me.textBoxHeight.Text)
				End If
			End If
			Me.BarCodeControl1.BarHeight=barHeight
		End Sub

		Protected Sub OnShowTextChanged(ByVal sender As Object, ByVal e As EventArgs)
			Me.BarCodeControl1.ShowText = Me.checkShowText.Checked
		End Sub

		Protected Sub OnCheckSumChanged(ByVal sender As Object, ByVal e As EventArgs)
			Me.BarCodeControl1.ShowCheckSumChar = Me.checkShowSum.Checked
		End Sub

		Protected Sub OnTextChanged(ByVal sender As Object, ByVal e As EventArgs)
            If (TryCast(sender, TextBox)).Text IsNot Nothing Then
                Me.BarCodeControl1.Data = Me.textBoxText.Text
                Me.BarCodeControl1.Data2D = Me.textBoxText.Text
            End If
		End Sub
	End Class
End Namespace
