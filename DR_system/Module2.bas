Attribute VB_Name = "Module2"
Public Sub condatabase()
' open the database

rs.CursorLocation = adUseClient
With cn
.CursorLocation = adUseClient
.Open "DR"
End With

End Sub

