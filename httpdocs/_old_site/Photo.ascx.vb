
Partial Class Photo
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Randomize()
        If Page.Title = "Canada Nagarathar Sangam Home" Then
            Image1.ImageUrl = "~\Images\1.jpg"
            Image2.ImageUrl = "~\Images\K1.gif"
        Else
            Image1.ImageUrl = "~\Images\" & (Int(Rnd() * 8) + 1) & ".jpg"
            Image2.ImageUrl = "~\Images\K" & (Int(Rnd() * 2) + 1) & ".gif"
        End If
    End Sub
End Class
