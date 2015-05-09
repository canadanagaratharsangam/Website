<%@ LANGUAGE = "VBSCRIPT" %>
<%
Response.Buffer = true
Response.CacheControl = "no-cache"
Response.AddHeader "Pragma", "no-cache"
Response.Expires = -1
%>

<%
Dim sConnection, objConn , objRS, strSQL
Dim f_Student_Initials, f_Student_FullName, f_Student_DOB, f_Fathers_Name, f_str_Mothers_Name, f_address_1, f_address_2, f_address_3, f_town, f_postal_code, f_state, f_phone, f_email, f_village, f_koil, f_pirivu, f_degree_diploma, f_year_of_study, f_institution_name, f_institution_address, f_extracurricular, f_family_income, f_comments
Dim strEmail, strName, strBody, sEmailTo, sEmailSubject, sEmailBody


f_Student_Initials = Request.Form("student_initials")
f_Student_FullName = Request.Form("student_fullname")
f_Student_DOB = Request.Form("student_dob")
f_Fathers_Name = Request.Form("fathers_name")
f_str_Mothers_Name = Request.Form("mothers_name")
f_address_1 = Request.Form("address_1")
f_address_2 = Request.Form("address_2")
f_address_3 = Request.Form("address_3")
f_town = Request.Form("town")
f_postal_code = Request.Form("postal_code")
f_state = Request.Form("state")
f_phone = Request.Form("phone")
f_email = Request.Form("email")
f_village = Request.Form("village")
f_koil = Request.Form("koil")
f_pirivu = Request.Form("pirivu")
f_degree_diploma = Request.Form("degree_diploma")
f_year_of_study = Request.Form("year_of_study")
f_institution_name = Request.Form("institution_name")
f_institution_address = Request.Form("institution_address")
f_extracurricular = Request.Form("extracurricular")
f_family_income = Request.Form("family_income")
f_comments = Request.Form("comments")


sConnection = "DRIVER={MySQL ODBC 3.51 Driver}; SERVER=mysql2.dailyrazor.com; DATABASE=canadana_scholarship; UID=nagarathar_user; PASSWORD=oM321; OPTION=3;"


Set objConn = Server.CreateObject("ADODB.Connection")

objConn.Open(sConnection)

strSQL = "INSERT INTO scholarship_form ( " & _
		"Date_Submitted, " & _
		"Student_Initials, " & _
		"Student_FullName, " & _
		"Student_DOB, " & _
		"Fathers_Name, " & _
		"Mothers_Name, " & _
		"Address_1, " & _
		"Address_2, " & _
		"Address_3, " & _
		"Town, " & _
		"Postal_Code, " & _
		"State, " & _
		"Country, " & _
		"Phone, " & _
		"Email_Address, " & _
		"Village, " & _
		"Koil, " & _
		"Pirivu, " & _
		"Degree_Diploma, " & _
		"Year_Of_Study, " & _
		"Institution_Name, " & _
		"Institution_Address , " & _
		"Extracurricular , " & _
		"Family_Income , " & _
		"Comments ) " & _
	"VALUES" & _
		"(now() , " & _
		"'" & f_Student_Initials & "', " & _
		"'" & f_Student_FullName & "', " & _
		"'" & f_Student_DOB & "', " & _
		"'" & f_Fathers_Name & "', " & _
		"'" & f_Mothers_Name & "', " & _
		"'" & f_address_1 & "', " & _
		"'" & f_address_2 & "', " & _
		"'" & f_address_3 & "', " & _
		"'" & f_town & "', " & _
		"'" & f_postal_code & "', " & _
		"'" & f_state & "', " & _
		"'INDIA', " & _
		"'" & f_phone & "', " & _
		"'" & f_email & "', " & _
		"'" & f_village & "', " & _
		"'" & f_koil & "', " & _
		"'" & f_pirivu & "', " & _
		"'" & f_degree_diploma & "', " & _
		"'" & f_year_of_study & "', " & _
		"'" & f_institution_name & "', " & _
		"'" & f_institution_address & "', " & _
		"'" & f_extracurricular & "', " & _
		"'" & f_family_income & "', " & _
		"'" & f_comments & "') "

Response.Write strSQL

objConn.Execute strSQL

objConn.Close
Set objConn = Nothing


strName = f_Student_FullName
strEmail = f_email

	sEmailSubject = "New CNS Scholarship Application"
	sEmailBody = "<center>" & _
		"<font face='Verdana'><b>" & strName & "</b> has applied for the CNS Scholarship:</font><br><br></center>" & _
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
	.To       = "ram.ms@me.com,maninagappan@gmail.com,kannathal@yahoo.com"
	.From     = "CNS Website <webmaster@canadanagaratharsangam.com>"
	.Subject  = sEmailSubject
	.HTMLBody = sEmailBody
	.Send
End With

Set Fields = Nothing
Set objMessage = Nothing
Set objConfig = Nothing


Response.Redirect "application_thank_you.asp"

%>
