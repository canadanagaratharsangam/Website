<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Test Development"></asp:Label><br />
        <br />
        This site will be used to test any changes to be made to canadanagaratharsangam.com<br />
        <br />
        June 23, 2006<br />
        <br />
        On the change list is (hopefully will have enough time to implement these!):<br />
        <ul>
            <li>Implement user logons</li>
            <li>Create Administrator configuration panel</li>
            <li>Create Management configuration panel</li>
            <li>DB implementation for other purposes (ooh!)</li>
        </ul>
        <p>
            Welcome
            <asp:LoginName ID="LoginName1" runat="server" />
            !</p>
    
    </div>
        File Upload test:<br />
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <br />
        <asp:Label ID="Label2" runat="server"></asp:Label>
    </form>
</body>
</html>
