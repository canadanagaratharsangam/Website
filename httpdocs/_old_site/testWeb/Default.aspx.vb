Imports System
Imports System.IO
Imports System.ComponentModel
Imports Microsoft.Office

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        FileUpload1.SaveAs(Server.MapPath(""))
        'Dim upFileReader As New StreamReader(Server.MapPath("temp\" & FileUpload1.FileName))
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label2.Text = Server.MapPath("")
    End Sub
End Class
