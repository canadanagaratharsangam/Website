
Partial Class Master1
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim Readfile As New System.IO.StreamReader(Server.MapPath("Facts.txt"))
        Dim i As Int16
        Dim fastFact As New String("")
        Randomize()
        Dim rndNum = Int(Rnd() * 6)
        fastFact = Readfile.ReadLine()
        For i = 1 To rndNum
            fastFact = Readfile.ReadLine()
        Next
        Image1.ToolTip = fastFact
    End Sub
End Class

