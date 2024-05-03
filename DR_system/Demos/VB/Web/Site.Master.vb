Imports System
Imports System.Diagnostics
Imports System.Web.UI
Imports System.Web.UI.WebControls

Namespace WebApplication3
	Partial Public Class SiteMaster
		Inherits System.Web.UI.MasterPage
		Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

		End Sub

		Protected Sub OnWordClick(ByVal sender As Object, ByVal e As EventArgs)
			Process.Start("http://www.e-iceblue.com/Introduce/word-for-net-introduce.html")
		End Sub

		Protected Sub OnExcelClick(ByVal sender As Object, ByVal e As EventArgs)
			Process.Start("http://www.e-iceblue.com/Introduce/excel-for-net-introduce.html")
		End Sub

		Protected Sub OnPdfClick(ByVal sender As Object, ByVal e As EventArgs)
			Process.Start("http://www.e-iceblue.com/Introduce/pdf-for-net-introduce.html")
		End Sub

		Protected Sub OnBarcodeClick(ByVal sender As Object, ByVal e As EventArgs)
			Process.Start("http://www.e-iceblue.com/Introduce/barcode-for-net-introduce.html")
		End Sub
	End Class
End Namespace
