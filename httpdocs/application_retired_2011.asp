<%@ LANGUAGE = "VBSCRIPT" %>
<%
Response.Buffer = true
Response.CacheControl = "no-cache"
Response.AddHeader "Pragma", "no-cache"
Response.Expires = -1
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>Canada Nagarathar Sangam ::: Application Form</title>
<meta name="keywords" content="Nagarathar, Nagarathars, Canada Nagarathars, Canada Nagarathar Sangam, Nattukkottai Chettiars, NKC, Toronto Nagarathars, CNS, CNS Scholarship, CNS Scholarship Application">
<meta name="description" content="Welcome to Canada Nagarathar Sangam website! For those who are visiting our site for the first time, canadanagaratharsangam.com is your window into the Nagarathar Community in Canada.">
<link href="default.css" rel="stylesheet" type="text/css">
</head>

<script language="JavaScript" src="js/date-picker.js" type="text/javascript"></script>
<script language="JavaScript" type="text/javascript">

function validate_form() {
 	if (trim(document.applicant_info.student_initials.value) == "") {
 		alert("The field \"Initials\" cannot be blank");
        document.applicant_info.student_initials.focus();
 		return false;
 	}

 	if (trim(document.applicant_info.student_fullname.value) == "") {
 		alert("The field \"Name\" cannot be blank");
        document.applicant_info.student_fullname.focus();
 		return false;
 	}

 	if (trim(document.applicant_info.student_dob.value) == "") {
 		alert("The field \"Date of Birth\" cannot be blank");
        document.applicant_info.student_dob.focus();
 		return false;
 	}

 	if (trim(document.applicant_info.fathers_name.value) == "") {
 		alert("The field \"Father's Name\" cannot be blank");
        document.applicant_info.fathers_name.focus();
 		return false;
 	}

 	if (trim(document.applicant_info.mothers_name.value) == "") {
 		alert("The field \"Mother's Name\" cannot be blank");
        document.applicant_info.mothers_name.focus();
 		return false;
 	}

 	if (trim(document.applicant_info.address_1.value) == "") {
 		alert("The field \"Address\" cannot be blank");
        document.applicant_info.address_1.focus();
 		return false;
 	}

 	if (trim(document.applicant_info.town.value) == "") {
 		alert("The field \"Town\" cannot be blank");
        document.applicant_info.town.focus();
 		return false;
 	}

 	if (trim(document.applicant_info.postal_code.value) == "") {
 		alert("The field \"Postal Code\" cannot be blank");
        document.applicant_info.postal_code.focus();
 		return false;
 	}

 	if (!IsNumeric(document.applicant_info.postal_code.value)) {
		  alert('Enter numbers only for Postal Code')
		  document.applicant_info.postal_code.focus();
		  return false;
	}

 	if (!IsNumeric(document.applicant_info.phone.value)) {
		 alert('Enter numbers only for Phone')
		 document.applicant_info.phone.focus();
		 return false;
	}

 	if (trim(document.applicant_info.state.value) == "") {
 		alert("The field \"State\" cannot be blank");
        document.applicant_info.state.focus();
 		return false;
 	}

 	if (trim(document.applicant_info.email.value) == "") {
 		alert("The field \"Email\" cannot be blank");
        document.applicant_info.email.focus();
 		return false;
 	}

 	if (!echeck(document.applicant_info.email.value)) {
		 document.applicant_info.email.focus();
		 return false;
	}

 	if (trim(document.applicant_info.village.value) == "") {
 		alert("The field \"Village\" cannot be blank");
        document.applicant_info.village.focus();
 		return false;
 	}

 	if ((document.applicant_info.koil.selectedIndex) == 0) {
 		alert("The field \"Koil\" cannot be blank");
        document.applicant_info.koil.focus();
 		return false;
 	}

 	if ((document.applicant_info.pirivu.selectedIndex) == 0) {
 		alert("The field \"Pirivu\" cannot be blank");
        document.applicant_info.pirivu.focus();
 		return false;
 	}

 	if (trim(document.applicant_info.degree_diploma.value) == "") {
 		alert("The field \"Degree (or) Diploma\" cannot be blank");
        document.applicant_info.degree_diploma.focus();
 		return false;
 	}

 	if ((document.applicant_info.year_of_study.selectedIndex) == 0) {
 		alert("The field \"Year of Study\" cannot be blank");
        document.applicant_info.year_of_study.focus();
 		return false;
 	}

 	if (trim(document.applicant_info.institution_name.value) == "") {
 		alert("The field \"Institution Name\" cannot be blank");
        document.applicant_info.institution_name.focus();
 		return false;
 	}

 	if (trim(document.applicant_info.family_income.value) == "") {
 		alert("The field \"Family Income\" cannot be blank");
        document.applicant_info.family_income.focus();
 		return false;
 	}

 	if (!IsNumeric(document.applicant_info.family_income.value)) {
		 alert('Enter numbers only for Annual Family Income')
		 document.applicant_info.family_income.focus();
		 return false;
	}
}

function trim (str) {
	var whitespace = ' \n\r\t\f\x0b\xa0\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u200b\u2028\u2029\u3000';
	for (var i = 0; i < str.length; i++) {
		if (whitespace.indexOf(str.charAt(i)) === -1) {
			str = str.substring(i);
			break;
		}
	}
	for (i = str.length - 1; i >= 0; i--) {
		if (whitespace.indexOf(str.charAt(i)) === -1) {
			str = str.substring(0, i + 1);
			break;
		}
	}
	return whitespace.indexOf(str.charAt(0)) === -1 ? str : '';
}


function IsNumeric(sText) {
   	var ValidChars = "0123456789.";
   	var IsNumber=true;
   	var Char;

   	for (i = 0; i < sText.length && IsNumber == true; i++) {
  		Char = sText.charAt(i);
   		if (ValidChars.indexOf(Char) == -1) {
      		IsNumber = false;
    	}
	}
  	return IsNumber;
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
		   alert("Enter a valid Email")
		   return false
		}

		if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
		   alert("Enter a valid Email")
		   return false
		}

		if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
		    alert("Enter a valid Email")
		    return false
		}

		 if (str.indexOf(at,(lat+1))!=-1){
		    alert("Enter a valid Email")
		    return false
		 }

		 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
		    alert("Enter a valid Email")
		    return false
		 }

		 if (str.indexOf(dot,(lat+2))==-1){
		    alert("Enter a valid Email")
		    return false
		 }

		 if (str.indexOf(" ")!=-1){
		    alert("Enter a valid Email")
		    return false
		 }
 		 return true
	}

//Applies cascading behavior for the specified dropdowns
function applyCascadingDropdown(sourceId, targetId) {
   	var source = document.getElementById(sourceId);
   	var target = document.getElementById(targetId);
   	if (source && target) {
    	source.onchange = function() {
        	displayOptionItemsByClass(target, source.value);
        }
        displayOptionItemsByClass(target, source.value);
 	}
}

//Displays a subset of a dropdown's options
function displayOptionItemsByClass(selectElement, className) {
   	if (!selectElement.backup) {
        selectElement.backup = selectElement.cloneNode(true);
    }
    var options = selectElement.getElementsByTagName("option");
    for(var i=0, length=options.length; i<length; i++) {
        selectElement.removeChild(options[0]);
    }
    var options = selectElement.backup.getElementsByTagName("option");
    for(var i=0, length=options.length; i<length; i++) {
        if (options[i].className==className)
            selectElement.appendChild(options[i].cloneNode(true));
    }
}

//Binds dropdowns
function applyCascadingDropdowns() {
    applyCascadingDropdown("koil", "pirivu");
    //We could even bind items to another dropdown
    //applyCascadingDropdown("items", "foo");
}

//execute when the page is ready
window.onload=applyCascadingDropdowns;

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
					<td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="title8" style="height: 65px;">
							<tr>
								<td valign="top"><h2>Scholarship Application</h2></td>
							</tr>
						</table></td>
				</tr>
				<tr>
					<td><img src="images/update.gif"><br><br>Form submission issues have been resolved at this time. <br><br>Last date for receiving applications is <b>Aug 31, 2011</b>. [Updated: Jul 25, 2011]</td>
				</tr>
<!--
				<tr>
					<td><img src="images/update.gif"> Some users have reported a "500 Internal Server Error" while submitting this form. For those users who continue to experience difficulties please email your application with <u>all</u> supporting documentation to <a href="mailto:cns_education@hotmail.ca?subject=CNS Education Application">cns_education@hotmail.ca</a> [cns_education@hotmail.ca]. Please note the domain name of the email address is .ca and <u>not</u> .com. <br><br>The education committee has decided to extend the date for receiving applications to <b>Aug 31, 2011</b>. [Updated: Jul 24, 2011]</td>
				</tr>
-->
				<tr>
					<td>&nbsp;</td>
				</tr>
<!-- *** Start of Form *** -->

				<tr>
					<td style="padding: 0 30px 0 24px;">
                        <form id="applicant_info" name="applicant_info" action="form_process.asp" onSubmit="return validate_form()" method="post" >

                        <table align="center">
                            <tr>
                                <td id=formlbl>Initials:</td>
                                <td>
                                    <input type=text name="student_initials" size="5" maxlength="5">
                                </td>
                            </tr>
                            <tr>
                                <td id=formlbl>Full Name:</td>
                                <td>
                                    <input type=text name="student_fullname" size="30" maxlength="50">
                                </td>
                            </tr>

                            <tr>
                                <td id=formlbl>Date of Birth:</td>
                                <td>
                                    <input type=text name="student_dob" size="10" maxlength="10" readonly><a href="javascript:show_calendar('applicant_info.student_dob');" onMouseOver="window.status='Date Picker';return true;" onMouseOut="window.status='';return true;"><img src="images/icon-calendar.gif" border="0" style="vertical-align:bottom;"></a>&nbsp;[Year-Month-Day]
                                </td>
                            </tr>

                            <tr>
                                <td id=formlbl>Father's Name:</td>
                                <td>
                                    <input type=text name="fathers_name" size="30" maxlength="50">
                                </td>
                            </tr>
                            <tr>
                            	<td id=formlbl>Mother's Name:</td>
                                <td>
                                    <input type=text name="mothers_name" size="30" maxlength="50">

                                </td>
                            </tr>

                            <tr>
                                <td style="vertical-align: top;">Address:</td>
                                <td>
                                    <p class=addheight><input type=text name="address_1" size="40" maxlength="100"></p>
                                    <p class=addheight><input type=text name="address_2" size="40" maxlength="75"></p>
                                    <input type=text name="address_3" size="40" maxlength="75">
                                </td>
                            </tr>
                            <tr>
                                <td id=formlbl>Town / City:</td>
                                <td>
                                    <input type=text name="town" size="30" maxlength="100">
                                </td>
                            </tr>
                            <tr>
                                <td id=formlbl>Postal Code:</td>
                                <td>
                                    <input type=text name="postal_code" size="6" maxlength="6">
                                </td>
                            </tr>
                            <tr>
                                <td id=formlbl>State:</td>
                                <td>
                                    <input type=text name="state" size="20" maxlength="20">
                                </td>
                            </tr>
                            <tr>
                                <td id=formlbl>Country:</td>
                                <td>
                                    <input type=text name="country" size="20" maxlength="20" value="INDIA" readonly>
                                </td>
                            </tr>
                            <tr>
                                <td id=formlbl>Phone:</td>
                                <td>
                                    <input type=text name="phone" size="12" maxlength="12">
                                </td>
                            </tr>
                            <tr>
                                <td id=formlbl>Email:</td>
                                <td>
                                    <input type=text name="email" size="25" maxlength="25">
                                </td>
                            </tr>
                            <tr>
                                <td id=formlbl>Village:</td>
                                <td>
                                    <input type=text name="village" size="30" maxlength="50">
                                </td>
                            </tr>
                            <tr>
                                <td id=formlbl><label for="lbl_koil">Koil:</label></td>
                                <td>
                                    <select name="koil" id="koil">
                                        <option value="Select">-- SELECT ONE --</option>
                                        <option value="Illaiyathangudi">Illaiyathangudi</option>
                                        <option value="Illupaikudi">Illupaikudi</option>
                                        <option value="Iranikoil">Iranikoil</option>
                                        <option value="Mathur">Mathur</option>
                                        <option value="Nemamkoil">Nemamkoil</option>
                                        <option value="Pillaiyarpatti">Pillaiyarpatti</option>
                                        <option value="Surakuddi">Surakuddi</option>
                                        <option value="Vairavankoil">Vairavankoil</option>
                                        <option value="Velangudi">Velangudi</option>
                                    </select>
                                </td>
							</tr>
							<tr>
                                <td id=formlbl><label for="lbl_pirivu">Pirivu:</label></td>
                                <td>
                                    <select name="pirivu" id="pirivu">
                                        <option>-- SELECT ONE --</option>
                                        <option class="Illaiyathangudi">-- SELECT ONE --</option>
                                        <option class="Illaiyathangudi" value="Kazhanivasakkudiayar">Kazhanivasakkudiayar</option>
                                        <option class="Illaiyathangudi" value="Kingginikkurudiayar">Kingginikkurudiayar</option>
                                        <option class="Illaiyathangudi" value="Okkurudiayar">Okkurudiayar</option>
                                        <option class="Illaiyathangudi" value="Pattanasamiyar">Pattanasamiyar</option>
                                        <option class="Illaiyathangudi" value="Perasenthoorudaiyar">Perasenthoorudaiyar</option>
                                        <option class="Illaiyathangudi" value="Perumaruthoorudaiyar">Perumaruthoorudaiyar</option>
                                        <option class="Illaiyathangudi" value="Sirusethoorudaiyar">Sirusethoorudaiyar</option>

                                        <option class="Illupaikudi" value="None">No pirivu</option>
                                        <option class="Iranikoil" value="None">No pirivu</option>

                                        <option class="Mathur">-- SELECT ONE --</option>
                                        <option class="Mathur" value="Arumbakkur">Arumbakkur</option>
                                        <option class="Mathur" value="Kannur">Kannur</option>
                                        <option class="Mathur" value="Karuppur">Karuppur</option>
                                        <option class="Mathur" value="Kulathur">Kulathur</option>
                                        <option class="Mathur" value="Manalur">Manalur</option>
                                        <option class="Mathur" value="Mannur">Mannur</option>
                                        <option class="Mathur" value="Uraiyur">Uraiyur</option>

                                        <option class="Nemamkoil" value="None">No pirivu</option>
                                        <option class="Pillaiyarpatti" value="None">No pirivu</option>
                                        <option class="Surakuddi" value="None">No pirivu</option>

                                        <option class="Vairavankoil">-- SELECT ONE --</option>
                                        <option class="Vairavankoil" value="Periya Vahuppu">Periya Vahuppu</option>
                                        <option class="Vairavankoil" value="Pillaiyar Vahuppu">Pillaiyar Vahuppu</option>
                                        <option class="Vairavankoil" value="Kalanivasaludayar">Kalanivasaludayar</option>
                                        <option class="Vairavankoil" value="Maruthentirapuramudayar">Maruthentirapuramudayar</option>
                                        <option class="Vairavankoil" value="Theyyanar Vahuppu">Theyyanar Vahuppu</option>

                                        <option class="Velangudi" value="None">No pirivu</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td id=formlbl>Degree / <br>Diploma:</td>
                                <td>
                                    <input type=text name="degree_diploma" size="30" maxlength="50">
                                </td>
                            </tr>
                            <tr>
                                <td id=formlbl>Year of Study:</td>
                                <td>
                                    <select name="year_of_study" id="year_of_study">
                                        <option>-- SELECT ONE --</option>
                                        <option value="First">1st Year</option>
                                        <option value="Second">2nd Year</option>
                                        <option value="Third">3rd Year</option>
                                        <option value="Fourth">4th Year</option>
                                        <option value="Fifth">5th Year</option>
                                  	</select>
                                </td>
                            </tr>
                            <tr>
                                <td id=formlbl>Institution / <br>College Name:</td>
                                <td>
                                    <input type=text name="institution_name" size="35" maxlength="35">
                                </td>
                            </tr>
                            <tr>
                                <td id=formlbl>Institution / <br>College Address:</td>
                                <td>
                                    <textarea name="institution_address" cols="35" rows="4"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td id=formlbl>Academic / <br>Extracurricular<br> Activities:</td>
                                <td>

                                    <textarea name="extracurricular" cols="35" rows="4"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td id=formlbl>Annual<br> Family Income<br> in Rupees:</td>
                                <td>
                                    <input type=text name="family_income" size="7" maxlength="7">
                                </td>
                            </tr>
                            <tr>

                            <tr>
                                <td id=formlbl>Letter of Attestation:</td>
                                <td><a href="LoA.pdf">Click here</a> to view / download 'Letter of Attestation'</td>
                            </tr>

                            <tr>
                                <td id=formlbl>Comments: (if any)</td>
                                <td>
                                    <textarea name="comments" cols="35" rows="4"></textarea>
                                </td>
                            </tr>


                            <tr>
                                <td colspan="4" align="center"><br><input type=submit name="submit_button" style="cursor:hand" value="SUBMIT">
                                <input type=reset name="reset_button" style="cursor:hand" value="RESET"><br><br></td>
                            </tr>
                        </table>
                        </form>
                    <p>&nbsp;</p>
                    </td>
				</tr>

<!-- *** End of Form *** -->

			</table></td>
		<td width="30"><img src="images/homepage02.jpg" alt="" width="30" height="680"></td>
	</tr>
</table>

<!--#include file="footer.asp" -->
</body>
</html>

