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
<title>Canada Nagarathar Sangam ::: CNS Membership Application Form</title>
<meta name="keywords" content="Nagarathar, Nagarathars, Canada Nagarathars, Canada Nagarathar Sangam, Nattukkottai Chettiars, NKC, Toronto Nagarathars, CNS, CNS Scholarship, CNS Scholarship Application">
<meta name="description" content="Welcome to Canada Nagarathar Sangam website! For those who are visiting our site for the first time, canadanagaratharsangam.com is your window into the Nagarathar Community in Canada.">
<link href="default.css" rel="stylesheet" type="text/css">
</head>

<script language="JavaScript" src="js/date-picker.js" type="text/javascript"></script>
<script language="JavaScript" type="text/javascript">

function validate_form() {
 	if ((document.applicant_info.type.selectedIndex) == 0) {
 		alert("Select Membership Type");
        document.applicant_info.type.focus();
 		return false;
 	}

 	if (trim(document.applicant_info.first_name.value) == "") {
 		alert("The field \"First Name\" cannot be blank");
        document.applicant_info.first_name.focus();
 		return false;
 	}

 	if (trim(document.applicant_info.last_name.value) == "") {
 		alert("The field \"Last Name\" cannot be blank");
        document.applicant_info.last_name.focus();
 		return false;
 	}

 	if (trim(document.applicant_info.address_1.value) == "") {
 		alert("The field \"Address\" cannot be blank");
        document.applicant_info.address_1.focus();
 		return false;
 	}

 	if (trim(document.applicant_info.city.value) == "") {
 		alert("The field \"City\" cannot be blank");
        document.applicant_info.city.focus();
 		return false;
 	}

 	if (trim(document.applicant_info.postal_code.value) == "") {
 		alert("The field \"Postal / ZIP Code\" cannot be blank");
        document.applicant_info.postal_code.focus();
 		return false;
 	}

 	if (!IsNumeric(document.applicant_info.phone.value)) {
		 alert('Enter numbers only for Phone')
		 document.applicant_info.phone.focus();
		 return false;
	}

 	if ((document.applicant_info.province.selectedIndex) == 0) {
 		alert("Select a Province / State");
        document.applicant_info.province.focus();
 		return false;
 	}

 	if (trim(document.applicant_info.phone.value) == "") {
 		alert("The field \"Phone\" cannot be blank");
        document.applicant_info.phone.focus();
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
 		alert("Select your Koil");
        document.applicant_info.koil.focus();
 		return false;
 	}

 	if (!document.applicant_info.acceptance.checked) {
 		alert("You must select the check box at the bottom of this form");
        document.applicant_info.acceptance.focus();
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
								<td valign="top"><h2>CNS Membership Application Form</h2></td>
							</tr>
						</table></td>
				</tr>

<!-- *** Start of Form *** -->

				<tr>
					<td style="padding: 0 30px 0 24px;">
                        <form id="applicant_info" name="applicant_info" action="form_process_registration.asp" onSubmit="return validate_form()" method="post" >

                        <table align="center">
							<tr>
								<td colspan="2">
									Click <a href="http://canadanagaratharsangam.com/articles/2010_ObjectivesGuidelines.pdf">here</a> to review the Objectives and Guidelines of Canada Nagarathar Sangam (CNS).<br><br>
									<u>Note</u>: For those living outside of Ontario, there is no cost for joining CNS and there will be no membership fee. Nagarathars in the age group 18 to 30 and who are unmarried, can apply for <b>Youth</b> membership. Nagarathars living outside of Canada, specifically the US, and who plan to regularly participate in CNS functions can apply for <b>Associate</b> membership. <br><br>Fields in <b>bold</b> are mandatory.
								</td></tr>
                            <tr>
                                <td class=text9 colspan="4">CNS respects your privacy. Protecting your privacy means we will never sell your information to other parties. However the information that you provide will be shared amongst CNS members.</td>
                            </tr>
                            <tr>
                                <td id=formlbl><label for="lbl_marital"><b>Membership Type:</b></label></td>
                                <td>
                                    <select name="type" id="type">
                                        <option>-- SELECT ONE --</option>
                                        <option value="Married">Family</option>
                                        <option value="Youth">Youth</option>
                                        <option value="Associate">Associate</option>
                                    </select>
                                </td>
							</tr>
                            <tr>
                                <td id=formlbl><b>First Name:</b></td>
                                <td>
                                    <input type=text name="first_name" size="30" maxlength="50">
                                </td>
                            </tr>
                            <tr>
                                <td id=formlbl><b>Last Name:</b></td>
                                <td>
                                    <input type=text name="last_name" size="30" maxlength="50">
                                </td>
                            </tr>
                            <tr>
                                <td id=formlbl>Gender:</td>
                                <td>
                                    <input type=radio name="gender" value="Male">Male
                                    <input type=radio name="gender" value="Female">Female
                                </td>
                            </tr>
                            <tr>
                                <td id=formlbl><label for="lbl_marital">Marital Status:</label></td>
                                <td>
                                    <select name="marital" id="marital">
                                        <option>-- SELECT ONE --</option>
                                        <option value="Married">Married</option>
                                        <option value="Single">Single</option>
                                    </select>
                                </td>
							</tr>
							<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
                            <tr>
                                <td id=formlbl>Name of Spouse:</td>
                                <td>
                                    <input type=text name="spouse_name" size="30" maxlength="50">
                                </td>
                            </tr>
                            <tr>
                            	<td id=formlbl>Name of Son/Daughter:</td>
                                <td>
                                    <input type=text name="child_1" size="30" maxlength="50">

                                </td>
                            </tr>
                            <tr>
                            	<td id=formlbl>Name of Son/Daughter:</td>
                                <td>
                                    <input type=text name="child_2" size="30" maxlength="50">

                                </td>
                            </tr>
                            <tr>
                            	<td id=formlbl>Name of Son/Daughter:</td>
                                <td>
                                    <input type=text name="child_3" size="30" maxlength="50">

                                </td>
                            </tr>
                            <tr>
                            	<td id=formlbl>Name of Son/Daughter:</td>
                                <td>
                                    <input type=text name="child_4" size="30" maxlength="50">

                                </td>
                            </tr>
							<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
                            <tr>
                                <td style="vertical-align: top;"><b>Address Line 1:</b></td>
                                <td>
                                    <p class=addheight><input type=text name="address_1" size="40" maxlength="100"></p>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: top;">Address Line 2:</td>
                                <td>
                                    <p class=addheight><input type=text name="address_2" size="40" maxlength="75"></p>
                                </td>
                            </tr>
                            <tr>
                                <td id=formlbl><b>City:</b></td>
                                <td>
                                    <input type=text name="city" size="30" maxlength="100">
                                </td>
                            </tr>
                            <tr>
                                <td id=formlbl><b>Postal / ZIP Code:</b></td>
                                <td>
                                    <input type=text name="postal_code" size="6" maxlength="6">
                                </td>
                            </tr>
                            <tr>
                                <td id=formlbl><b>Province / State:</b></td>
                                <td>
									<select id="province" name="province">
										<option>-- SELECT ONE --</option>
										<optgroup label="Canada">
											<option id="CAN-AB" value="AB">Alberta (AB)</option>
											<option id="CAN-BC" value="BC">British Columbia (BC)</option>
											<option id="CAN-MB" value="MB">Manitoba (MB)</option>
											<option id="CAN-NB" value="NB">New Brunswick (NB)</option>
											<option id="CAN-NL" value="NL">Newfoundland and Labrador (NL)</option>
											<option id="CAN-NT" value="NT">Northwest Territories (NT)</option>
											<option id="CAN-NS" value="NS">Nova Scotia (NS)</option>
											<option id="CAN-NU" value="NU">Nunavut (NU)</option>
											<option id="CAN-PE" value="PE">Prince Edward Island (PE)</option>
											<option id="CAN-SK" value="SK">Saskatchewan (SK)</option>
											<option id="CAN-ON" value="ON">Ontario (ON)</option>
											<option id="CAN-QC" value="QC">Quebec (QC)</option>
											<option id="CAN-YT" value="YT">Yukon (YT)</option>
										</optgroup>
										<optgroup label="United States">
											<option id="USA-AL" value="AL">Alabama (AL)</option>
											<option id="USA-AK" value="AK">Alaska (AK)</option>
											<option id="USA-AZ" value="AZ">Arizona (AZ)</option>
											<option id="USA-AR" value="AR">Arkansas (AR)</option>
											<option id="USA-CA" value="CA">California (CA)</option>
											<option id="USA-CO" value="CO">Colorado (CO)</option>
											<option id="USA-CT" value="CT">Connecticut (CT)</option>
											<option id="USA-DE" value="DE">Delaware (DE)</option>
											<option id="USA-DC" value="DC">District of Columbia (DC)</option>
											<option id="USA-FL" value="FL">Florida (FL)</option>
											<option id="USA-GA" value="GA">Georgia (GA)</option>
											<option id="USA-GU" value="GU">Guam (GU)</option>
											<option id="USA-HI" value="HI">Hawaii (HI)</option>
											<option id="USA-ID" value="ID">Idaho (ID)</option>
											<option id="USA-IL" value="IL">Illinois (IL)</option>
											<option id="USA-IN" value="IN">Indiana (IN)</option>
											<option id="USA-IA" value="IA">Iowa (IA)</option>
											<option id="USA-KS" value="KS">Kansas (KS)</option>
											<option id="USA-KY" value="KY">Kentucky (KY)</option>
											<option id="USA-LA" value="LA">Louisiana (LA)</option>
											<option id="USA-ME" value="ME">Maine (ME)</option>
											<option id="USA-MD" value="MD">Maryland (MD)</option>
											<option id="USA-MA" value="MA">Massachusetts (MA)</option>
											<option id="USA-MI" value="MI">Michigan (MI)</option>
											<option id="USA-MN" value="MN">Minnesota (MN)</option>
											<option id="USA-MS" value="MS">Mississippi (MS)</option>
											<option id="USA-MO" value="MO">Missouri (MO)</option>
											<option id="USA-MT" value="MT">Montana (MT)</option>
											<option id="USA-NE" value="NE">Nebraska (NE)</option>
											<option id="USA-NV" value="NV">Nevada (NV)</option>
											<option id="USA-NH" value="NH">New Hampshire (NH)</option>
											<option id="USA-NJ" value="NJ">New Jersey (NJ)</option>
											<option id="USA-NM" value="NM">New Mexico (NM)</option>
											<option id="USA-NY" value="NY">New York (NY)</option>
											<option id="USA-NC" value="NC">North Carolina (NC)</option>
											<option id="USA-ND" value="ND">North Dakota (ND)</option>
											<option id="USA-OH" value="OH">Ohio (OH)</option>
											<option id="USA-OK" value="OK">Oklahoma (OK)</option>
											<option id="USA-OR" value="OR">Oregon (OR)</option>
											<option id="USA-PA" value="PA">Pennyslvania (PA)</option>
											<option id="USA-PR" value="PR">Puerto Rico (PR)</option>
											<option id="USA-RI" value="RI">Rhode Island (RI)</option>
											<option id="USA-SC" value="SC">South Carolina (SC)</option>
											<option id="USA-SD" value="SD">South Dakota (SD)</option>
											<option id="USA-TN" value="TN">Tennessee (TN)</option>
											<option id="USA-TX" value="TX">Texas (TX)</option>
											<option id="USA-UT" value="UT">Utah (UT)</option>
											<option id="USA-VT" value="VT">Vermont (VT)</option>
											<option id="USA-VA" value="VA">Virginia (VA)</option>
											<option id="USA-VI" value="VI">Virgin Islands (VI)</option>
											<option id="USA-WA" value="WA">Washington (WA)</option>
											<option id="USA-WV" value="WV">West Virginia (WV)</option>
											<option id="USA-WI" value="WI">Wisconsin (WI)</option>
											<option id="USA-WY" value="WY">Wyoming (WY)</option>
										</optgroup>
									</select>
									<!--
									<select id="province" name="province">
										<option value="">Select One</option>
										<option value="AB">Alberta</option>
										<option value="BC">British Columbia</option>
										<option value="MB">Manitoba</option>
										<option value="NB">New Brunswick</option>
										<option value="NF">Newfoundland</option>
										<option value="NT">Northwest Territories</option>
										<option value="NS">Nova Scotia</option>
										<option value="NU">Nunavut</option>
										<option value="ON">Ontario</option>
										<option value="PE">Prince Edward Island</option>
										<option value="QC">Quebec</option>
										<option value="SK">Saskatchewan</option>
										<option value="YT">Yukon Territory</option>
									</select>
									-->
                                </td>
                            </tr>
							<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
                            <tr>
                                <td id=formlbl><b>Phone:</b></td>
                                <td>
                                    <input type=text name="phone" size="10" maxlength="11">
                                </td>
                            </tr>
                            <tr>
                                <td id=formlbl><b>Email:</b></td>
                                <td>
                                    <input type=text name="email" size="25" maxlength="25">
                                </td>
                            </tr>
							<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
                            <tr>
                                <td id=formlbl><b>Village:</b></td>
                                <td>
                                    <input type=text name="village" size="30" maxlength="50">
                                </td>
                            </tr>
                            <tr>
                                <td id=formlbl><label for="lbl_koil"><b>Koil:</b></label></td>
                                <td>
                                    <select name="koil" id="koil">
                                        <option>-- SELECT ONE --</option>
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
                                <td id=formlbl><label for="lbl_pirivu"><b>Pirivu:</b></label></td>
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
							<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
                            <tr>
                                <td id=formlbl>Comments: (if any)</td>
                                <td>
                                    <textarea name="comments" cols="35" rows="4"></textarea>
                                </td>
                            </tr>
							<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
                            <tr>
                                <td colspan="2">
                                    <input type=checkbox name="acceptance" value="1"> <b>By submitting this form, I/we wish to be members of CNS.</b>
                               	</td>
                            </tr>
							<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
                            <tr>
                                <td colspan="4" align="center"><br><input type=submit name="submit_button" style="cursor:hand" value="SUBMIT">
                                <input type=reset name="reset_button" style="cursor:hand" value="RESET"></td>
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

