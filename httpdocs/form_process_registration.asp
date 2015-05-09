<%@ LANGUAGE = "VBSCRIPT" %>
<%
Response.Buffer = true
Response.CacheControl = "no-cache"
Response.AddHeader "Pragma", "no-cache"
Response.Expires = -1
%>

<%
Dim sConnection, objConn , objRS, strSQL
Dim f_type, f_first_name, f_last_name, f_gender, f_marital, f_spouse_name, f_child_1, f_child_2, f_child_3, f_child_4, f_address_1, f_address_2, f_city, f_postal_code, f_province, f_phone, f_email, f_village, f_koil, f_pirivu, f_comments, f_acceptance
Dim strEmail, strName, strBody, sEmailTo, sEmailSubject, sEmailBody

f_type = Request.Form("type")
f_first_name = Request.Form("first_name")
f_last_name = Request.Form("last_name")
f_gender = Request.Form("gender")
f_spouse_name = Request.Form("spouse_name")
f_child_1 = Request.Form("child_1")
f_child_2 = Request.Form("child_2")
f_child_3 = Request.Form("child_3")
f_child_4 = Request.Form("child_4")
f_address_1 = Request.Form("address_1")
f_address_2 = Request.Form("address_2")
f_city = Request.Form("city")
f_postal_code = Request.Form("postal_code")
f_province = Request.Form("province")
f_phone = Request.Form("phone")
f_email = Request.Form("email")
f_village = Request.Form("village")
f_koil = Request.Form("koil")
f_pirivu = Request.Form("pirivu")
f_comments = Request.Form("comments")
f_acceptance = Request.Form("acceptance")


sConnection = "DRIVER={MySQL ODBC 3.51 Driver}; SERVER=mysql2.dailyrazor.com; DATABASE=canadana_scholarship; UID=nagarathar_user;PASSWORD=oM321; OPTION=3"

Set objConn = Server.CreateObject("ADODB.Connection")

objConn.Open(sConnection)

strSQL = "INSERT INTO registration_form ( " & _
		"Date_Submitted, " & _
		"Membership_Type, " & _
		"First_Name, " & _
		"Last_Name, " & _
		"Gender, " & _
		"Spouse_Name, " & _
		"Child_1, " & _
		"Child_2, " & _
		"Child_3, " & _
		"Child_4, " & _
		"Address_1, " & _
		"Address_2, " & _
		"City, " & _
		"Postal_Code, " & _
		"Province, " & _
		"Phone, " & _
		"Email_Address, " & _
		"Village, " & _
		"Koil, " & _
		"Pirivu, " & _
		"Comments, " & _
		"Acceptance ) " & _
	"VALUES" & _
		"(now() , " & _
		"'" & f_type & "', " & _
		"'" & f_first_name & "', " & _
		"'" & f_last_name & "', " & _
		"'" & f_gender & "', " & _
		"'" & f_spouse_name & "', " & _
		"'" & f_child_1 & "', " & _
		"'" & f_child_2 & "', " & _
		"'" & f_child_3 & "', " & _
		"'" & f_child_4 & "', " & _
		"'" & f_address_1 & "', " & _
		"'" & f_address_2 & "', " & _
		"'" & f_city & "', " & _
		"'" & f_postal_code & "', " & _
		"'" & f_province & "', " & _
		"'" & f_phone & "', " & _
		"'" & f_email & "', " & _
		"'" & f_village & "', " & _
		"'" & f_koil & "', " & _
		"'" & f_pirivu & "', " & _
		"'" & f_comments & "', " & _
		"'" & f_acceptance & "') "

'Response.Write strSQL

objConn.Execute strSQL

objConn.Close
Set objConn = Nothing


strFName = f_first_name
strLName = f_last_name
strEmail = f_email

	sEmailSubject = "CNS New Member Registration Form"
	sEmailBody = "<center>" & _
		"<font face='Verdana'><b>" & strFName & "</b> <b>" & strLName & "</b> has registered:</font><br><br></center>" & _
		"<font face='Verdana'><b>Email Address of Sender: </b>" & strEmail & "</font><br>" & _
               "<font face='Verdana'><b>Application received on: </font></b>" & Now() & " CST"

Const cdoSendUsingMethod = "http://schemas.microsoft.com/cdo/configuration/sendusing"
Const cdoSendUsingPort = 2
Const cdoSMTPServer = "http://schemas.microsoft.com/cdo/configuration/smtpserver"
Const cdoSMTPServerPort = "http://schemas.microsoft.com/cdo/configuration/smtpserverport"
Const cdoSMTPConnectionTimeout  = "http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout"
Const cdoSMTPAuthenticate = "http://schemas.microsoft.com/cdo/configuration/smtpauthenticate"
Const cdoBasic = 1
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
	.Item(cdoSMTPAuthenticate)      = cdoBasic
	.Item(cdoSendUserName)          = "webmaster@canadanagaratharsangam.com"
	.Item(cdoSendPassword)          = "cns1"
	.Update
End With

Set objMessage = Server.CreateObject("CDO.Message")

Set objMessage.Configuration = objConfig

With objMessage
	.To       = "ram.ms@me.com,vpal07@yahoo.com"
	.From     = "CNS Website <webmaster@canadanagaratharsangam.com>"
	.Subject  = sEmailSubject
	.HTMLBody = sEmailBody
	.Send
End With

Set Fields = Nothing
Set objMessage = Nothing
Set objConfig = Nothing


Response.Redirect "membership_thank_you.asp"

%>
