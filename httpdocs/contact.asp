<%@ LANGUAGE = "VBSCRIPT" %>
<%
Response.Buffer = true
Response.CacheControl = "no-cache"
Response.AddHeader "Pragma", "no-cache"
Response.Expires = -1
%>

<%
Dim strButton, strEmail, strName, strBody, sEmailFrom, sEmailTo, sEmailSubject, sEmailBody
strButton = Request.Form("eventbutton")

strName = Request.Form("cName")
strEmail = Request.Form("cEmail")
strMessage = Request.Form("cComments")

if strButton = "SUBMIT" then

	sEmailFrom = strEmail
	sEmailTo = "webmaster@canadanagaratharsangam.com"
	sEmailSubject = "Feedback"
	sEmailBody = "<center>" & _
		"<font face='Verdana'><b>" & strName & "</b> has commented on the CNS Website:</font><br><br></center>" & _
		"<font face='Verdana'>" & strMessage & "</font><br><br>" & _
		"<font face='Verdana'><b>Email Address of Sender: </b>" & strEmail & "</font><br>" & _
               "<font face='Verdana'><b>Message Sent: </font></b>" & Now() & " CST"

Const cdoSendUsingMethod = "http://schemas.microsoft.com/cdo/configuration/sendusing"
Const cdoSendUsingPort = 2
Const cdoSMTPServer = "http://schemas.microsoft.com/cdo/configuration/smtpserver"
Const cdoSMTPServerPort = "http://schemas.microsoft.com/cdo/configuration/smtpserverport"
Const cdoSMTPConnectionTimeout  = "http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout"
Const cdoSMTPAuthenticate = "http://schemas.microsoft.com/cdo/configuration/smtpauthenticate"
Const cdoNoAuthentication = 0
Const cdoSendUserName = "http://schemas.microsoft.com/cdo/configuration/sendusername"
Const cdoSendPassword = "http://schemas.microsoft.com/cdo/configuration/sendpassword"

Dim objConfig  ' As CDO.Configuration
Dim objMessage ' As CDO.Message
Dim Fields     ' As ADODB.Fields

' Get a handle on the config object and it's fields
Set objConfig = Server.CreateObject("CDO.Configuration")
Set Fields = objConfig.Fields

' Set config fields we care about
With Fields
	.Item(cdoSendUsingMethod)       = cdoSendUsingPort
	.Item(cdoSMTPServer)            = "localhost"
	.Item(cdoSMTPServerPort)        = 25
	.Item(cdoSMTPConnectionTimeout) = 10
	.Item(cdoSMTPAuthenticate)      = cdoNoAuthentication
	.Update
End With

Set objMessage = Server.CreateObject("CDO.Message")

Set objMessage.Configuration = objConfig

With objMessage
	.To       = "Webmaster <webmaster@canadanagaratharsangam.com>"
	.From     = "CNS Website <webmaster@canadanagaratharsangam.com>"
	.Subject  = sEmailSubject
	.HTMLBody = sEmailBody
	.Send
End With

Set Fields = Nothing
Set objMessage = Nothing
Set objConfig = Nothing

Response.Redirect "feedback_thank_you.asp"

end if
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>Canada Nagarathar Sangam ::: Contact Us</title>
<meta name="keywords" content="Nagarathar, Nagarathars, Canada Nagarathars, Canada Nagarathar Sangam, Nattukkottai Chettiars, NKC, Toronto Nagarathars, CNS, CNS Scholarship, CNS Contact Us">
<meta name="description" content="Welcome to Canada Nagarathar Sangam website! For those who are visiting our site for the first time, canadanagaratharsangam.com is your window into the Nagarathar Community in Canada.">
<link href="default.css" rel="stylesheet" type="text/css">
</head>

<script language="JavaScript" type="text/javascript">

function validate_form() {
 	if (document.contact_info.cName.value == "") {
 		alert("The field \"Name\" cannot be blank");
        document.contact_info.cName.focus();
 		return false;
 	}

	if ((document.contact_info.cEmail.value==null)||(document.contact_info.cEmail.value=="")){
		alert("Please Enter your Email ID");
		document.contact_info.cEmail.focus();
		return false;
	}
	if (echeck(document.contact_info.cEmail.value)==false){
		document.contact_info.cEmail.value="";
		document.contact_info.cEmail.focus();
		return false;
	}

 	if (document.contact_info.cComments.value == "") {
 		alert("The field \"Comments\" cannot be blank");
        document.contact_info.cComments.focus();
 		return false;
 	}

}

/**
 * DHTML email validation script. Courtesy of SmartWebby.com (http://www.smartwebby.com/dhtml/)
 */

function echeck(str) {

	var at="@"
	var dot="."
	var lat=str.indexOf(at)
	var lstr=str.length
	var ldot=str.indexOf(dot)
	if (str.indexOf(at)==-1){
	   alert("Invalid E-mail ID")
	   return false
	}

	if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
	   alert("Invalid E-mail ID")
	   return false
	}

	if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
		alert("Invalid E-mail ID")
		return false
	}

	 if (str.indexOf(at,(lat+1))!=-1){
		alert("Invalid E-mail ID")
		return false
	 }

	 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
		alert("Invalid E-mail ID")
		return false
	 }

	 if (str.indexOf(dot,(lat+2))==-1){
		alert("Invalid E-mail ID")
		return false
	 }

	 if (str.indexOf(" ")!=-1){
		alert("Invalid E-mail ID")
		return false
	 }

	 return true
}

</script>

<body>
<table width="831" border="0" align="center" cellpadding="0" cellspacing="0">
	<tr valign="top">
		<td width="30"><img src="images/homepage01.jpg" alt="" width="30" height="680"></td>
		<td width="771"><table width="100%" border="0" cellpadding="0" cellspacing="0" class="bg1" style="height: 155px;">
				<tr>
					<td style="height: 88px;"><table width="771" border="0" align="center" cellpadding="0" cellspacing="0">
						<tr>
							<td width="385"><img src="images/subpage1_08.jpg" alt="" width="385" height="88"></td>
							<td width="386" align="right"><img src="images/subpage1_09.jpg" alt="" width="386" height="88"></td>
						</tr>
					</table></td>
				</tr>
<!--#include file="header.asp" -->
			</table>
			<table width="731" border="0" align="center" cellpadding="0" cellspacing="0">
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>
                    	<table width="100%" border="0" cellpadding="0" cellspacing="0" class="title8" style="height: 65px;">
							<tr>
								<td valign="top"><h2>Contact Us</h2></td>
							</tr>
						</table>
                  	</td>
				</tr>

<!-- Do not edit above this line -->
				<tr>
                	<td style="padding: 0 30px 0 24px;">
                    	If you have any comments or questions regarding Canada Nagarathar Sangam or this Web site, please fill in the contact form below and you will be contacted via e-mail within 7 business days of us having received your message.
                    </td>
              	</tr>

				<tr>
                	<td>&nbsp;</td>
              	</tr>
				<tr>
					<td style="padding: 0 30px 0 24px;">
                        <form id="contact_info" name="contact_info" method="post" >

                        <table align="center">
                            <tr>
                                <td id=formlbl>Name:</td>
                                <td>
                                    <input type=text name="cName" size="50" maxlength="50">
                                </td>
                            </tr>
                            <tr>
                                <td id=formlbl>Email:</td>
                                <td>
                                    <input type=text name="cEmail" size="50" maxlength="50">
                                </td>
                            </tr>
                            <tr>
                                <td id=formlbl>Comments:</td>
                                <td>
                                    <textarea name="cComments" cols="50" rows="4"></textarea>
                                </td>
                            </tr>
							<tr>
                            	<td>&nbsp;</td>
                            </tr>
                            <tr>
								<td class=formlbl colspan="2" align="center">
									<input type=submit name="eventbutton" id="eventbutton" value="SUBMIT" onClick="return validate_form()">
									<input type=reset name="reset" value="RESET">
								</td>
                          	</tr>
                      	</table>
                   	</form>
               	</td>
           	</tr>
<!-- End -->
			</table>
            </td>
		<td width="30"><img src="images/homepage02.jpg" alt="" width="30" height="680"></td>
	</tr>
</table>

<!--#include file="footer.asp" -->

</body>
</html>
