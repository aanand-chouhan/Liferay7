<%@page import="com.liferay.portal.kernel.json.JSONFactoryUtil"%>
<%@page import="com.liferay.portal.kernel.json.JSONObject"%>
<%@ include file="init.jsp"%>
<%@ page import="java.util.Date" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>

.form-control:focus {
    border-color: #007575;
    }
    .btn-default:focus, .btn-default:hover {
    	border-color:  none;
    } 
.input {
	border-width: 1px;
	border-radius: 6px;
}
.mapouter {
	position: relative;
	//text-align: right;
	/* height: 300px;
	width: 600px; */
}

.gmap_canvas {
	overflow: hidden;
	background: none !important;
	/* height: 500px;
	width: 600px; */
}
.error{
	color:#CC6677;
	border-color:#CC6677;
	
}
</style>



<liferay-portlet:resourceURL plid="208027"
	portletName="restserviceconsumer" var="resourceUrl1">
	<liferay-portlet:param name="param1" value="Value1" />
</liferay-portlet:resourceURL>


<aui:form  name="fm">


	<aui:col >
		<aui:col md="8">
			<aui:input label="Event Title" name="Event_Title" type="text"  cssClass="input" required="true">
				<aui:validator name="alpha" />
			</aui:input>
		</aui:col>
	</aui:col>

	<aui:col>
		<aui:col md="5">
			<aui:input label="Start Date" name="Start_Date" type="date" cssClass="input" required="true" >
				<aui:validator name="date" />
			</aui:input>
		</aui:col>
		<aui:col sm="3">
			<aui:input name="Start_Time" type="time" label="Start Time" cssClass="input" required="true"/>
		</aui:col>
	</aui:col>
	
	<aui:col>
		<aui:col md="5">
			<aui:input label="End Date" name="End_Date" type="date"	cssClass="input" >
				<aui:validator name="date" />
			</aui:input>
		</aui:col>
		<aui:col sm="3" >
			<aui:input name="End_Time" type="time" label="End Time" cssClass="input"/>
		</aui:col>
	</aui:col>
	

	<aui:col >
		<aui:col md="3">
			<aui:button label="Event Type" name="Event_Type"
				cssClass="physicalVenue" value="Physical Event " />
			</aui:col>
		<aui:col md="3">
			<aui:button label="Event Type" name="Event_Type"
				cssClass="onlineVenue" value="Online Event " />
		</aui:col>
	</aui:col>

	<div id="physicalVenueDetails">
	<aui:col>	
		<aui:col md="8">
			<aui:input label="Venue Description" name="Venue_Description" type="text" cssClass="input" />
		</aui:col>
	</aui:col>


	<aui:col>
		<aui:col md="2">
		<label class="control-label" for="_create_eventform_INSTANCE_VgfAVYAeYuzu_Postal_code"> Postal code 
		 <span class="icon-asterisk text-warning"><span class="hide-accessible">Required</span></span></label>
			<aui:input name="Postal_code" label="" type="text"  cssClass="input postalCode removeValidation"/>	
			
		</aui:col>
		<aui:col md="6">
		
		<label class="control-label" for="_create_eventform_INSTANCE_VgfAVYAeYuzu_Postal_code"> City 
		 <span class="icon-asterisk text-warning"><span class="hide-accessible">Required</span></span></label>
			<aui:input label="" name="City" type="text" cssClass="input city removeValidation" >
			   
			</aui:input>
		</aui:col>
	</aui:col>
	<aui:col>
		<aui:col md="8">
			<label> Street  <span class="icon-asterisk text-warning"><span class="hide-accessible">Required</span></span></label>
			<aui:input label="" name="Street" type="text" cssClass="input street removeValidation" > 
			 
			</aui:input>
		</aui:col>
	</aui:col>

		<aui:col>
			<aui:col md="8">
				<aui:select name="Country" label="Country" cssClass="input">
					<option>Select country</option>
					<aui:option value="AT">Austria</aui:option>

					<aui:option value="FR">France</aui:option>

					<aui:option value="DE">Germany</aui:option>

					<aui:option value="IT">Italy</aui:option>

					<aui:option value="NL">Netherlands</aui:option>

					<aui:option value="ES">Spain</aui:option>

					<aui:option value="CH">Switzerland</aui:option>

					<aui:option value="GB">United Kingdom</aui:option>

					<aui:option value="US" selected="selected">United States of			America</aui:option>


					<optgroup label="more countries">

						<aui:option value="AF">Afghanistan</aui:option>

						<aui:option value="AX">Åland Islands</aui:option>

						<aui:option value="AL">Albania</aui:option>

						<aui:option value="DZ">Algeria</aui:option>

						<aui:option value="AS">American Samoa</aui:option>

						<aui:option value="AD">Andorra</aui:option>

						<aui:option value="AO">Angola</aui:option>

						<aui:option value="AI">Anguilla</aui:option>

						<aui:option value="AQ">Antarctica</aui:option>

						<aui:option value="AG">Antigua and Barbuda</aui:option>

						<aui:option value="AR">Argentina</aui:option>

						<aui:option value="AM">Armenia</aui:option>

						<aui:option value="AW">Aruba</aui:option>

						<aui:option value="AU">Australia</aui:option>

						<aui:option value="AT">Austria</aui:option>

						<aui:option value="AZ">Azerbaijan</aui:option>

						<aui:option value="BS">Bahamas</aui:option>

						<aui:option value="BH">Bahrain</aui:option>

						<aui:option value="BD">Bangladesh</aui:option>

						<aui:option value="BB">Barbados</aui:option>

						<aui:option value="BY">Belarus</aui:option>

						<aui:option value="BE">Belgium</aui:option>

						<aui:option value="BZ">Belize</aui:option>

						<aui:option value="BJ">Benin</aui:option>

						<aui:option value="BM">Bermuda</aui:option>

						<aui:option value="BT">Bhutan</aui:option>

						<aui:option value="BO">Bolivia</aui:option>

						<aui:option value="BQ">Bonaire, Sint Eustatius and Saba</aui:option>

						<aui:option value="BA">Bosnia and Herzegovina</aui:option>

						<aui:option value="BW">Botswana</aui:option>

						<aui:option value="BV">Bouvet Island</aui:option>

						<aui:option value="BR">Brazil</aui:option>

						<aui:option value="IO">British Indian Ocean Territory</aui:option>

						<aui:option value="VG">British Virgin Islands</aui:option>

						<aui:option value="BN">Brunei Darussalam</aui:option>

						<aui:option value="BG">Bulgaria</aui:option>

						<aui:option value="BF">Burkina Faso</aui:option>

						<aui:option value="BI">Burundi</aui:option>

						<aui:option value="KH">Cambodia</aui:option>

						<aui:option value="CM">Cameroon</aui:option>

						<aui:option value="CA">Canada</aui:option>

						<aui:option value="CV">Cape Verde</aui:option>

						<aui:option value="KY">Cayman Islands</aui:option>

						<aui:option value="CF">Central African</aui:option>

						<aui:option value="TD">Chad</aui:option>

						<aui:option value="CL">Chile</aui:option>

						<aui:option value="CN">China</aui:option>

						<aui:option value="CX">Christmas Island</aui:option>

						<aui:option value="CC">Cocos (Keeling) Islands</aui:option>

						<aui:option value="CO">Colombia</aui:option>

						<aui:option value="KM">Comoros</aui:option>

						<aui:option value="CG">Congo Brazzaville</aui:option>

						<aui:option value="CK">Cook Islands</aui:option>

						<aui:option value="CR">Costa Rica</aui:option>

						<aui:option value="CI">Côte d'Ivoire</aui:option>

						<aui:option value="HR">Croatia</aui:option>

						<aui:option value="CU">Cuba</aui:option>

						<aui:option value="CW">Curaçao</aui:option>

						<aui:option value="CY">Cyprus</aui:option>

						<aui:option value="CZ">Czech Republic</aui:option>

						<aui:option value="KP">Democratic People's Republic of Korea</aui:option>

						<aui:option value="CD">Democratic Republic Of The Congo</aui:option>

						<aui:option value="DK">Denmark</aui:option>

						<aui:option value="DJ">Djibouti</aui:option>

						<aui:option value="DM">Dominica</aui:option>

						<aui:option value="DO">Dominican Republic</aui:option>

						<aui:option value="EC">Ecuador</aui:option>

						<aui:option value="EG">Egypt</aui:option>

						<aui:option value="SV">El Salvador</aui:option>

						<aui:option value="GQ">Equatorial Guinea</aui:option>

						<aui:option value="ER">Eritrea</aui:option>

						<aui:option value="EE">Estonia</aui:option>

						<aui:option value="SZ">Eswatini</aui:option>

						<aui:option value="ET">Ethiopia</aui:option>

						<aui:option value="FK">Falkland Islands</aui:option>

						<aui:option value="FO">Faroe Islands</aui:option>

						<aui:option value="FM">Federated States of Micronesia</aui:option>

						<aui:option value="FJ">Fiji</aui:option>

						<aui:option value="FI">Finland</aui:option>

						<aui:option value="FR">France</aui:option>

						<aui:option value="GF">French Guiana</aui:option>

						<aui:option value="PF">French Polynesia</aui:option>

						<aui:option value="TF">French Southern Territories</aui:option>

						<aui:option value="GA">Gabon</aui:option>

						<aui:option value="GM">Gambia</aui:option>

						<aui:option value="GE">Georgia</aui:option>

						<aui:option value="DE">Germany</aui:option>

						<aui:option value="GH">Ghana</aui:option>

						<aui:option value="GI">Gibraltar</aui:option>

						<aui:option value="GR">Greece</aui:option>

						<aui:option value="GL">Greenland</aui:option>

						<aui:option value="GD">Grenada</aui:option>

						<aui:option value="GP">Guadeloupe</aui:option>

						<aui:option value="GU">Guam</aui:option>

						<aui:option value="GT">Guatemala</aui:option>

						<aui:option value="GG">Guernsey</aui:option>

						<aui:option value="GN">Guinea</aui:option>

						<aui:option value="GW">Guinea-Bissau</aui:option>

						<aui:option value="GY">Guyana</aui:option>

						<aui:option value="HT">Haiti</aui:option>

						<aui:option value="HM">Heard Island and McDonald Islands</aui:option>

						<aui:option value="HN">Honduras</aui:option>

						<aui:option value="HK">Hong Kong</aui:option>

						<aui:option value="HU">Hungary</aui:option>

						<aui:option value="IS">Iceland</aui:option>

						<aui:option value="IN">India</aui:option>

						<aui:option value="ID">Indonesia</aui:option>

						<aui:option value="IQ">Iraq</aui:option>

						<aui:option value="IE">Ireland</aui:option>

						<aui:option value="IR">Islamic Republic of Iran</aui:option>

						<aui:option value="IM">Isle of Man</aui:option>

						<aui:option value="IL">Israel</aui:option>

						<aui:option value="IT">Italy</aui:option>

						<aui:option value="JM">Jamaica</aui:option>

						<aui:option value="JP">Japan</aui:option>

						<aui:option value="JE">Jersey</aui:option>

						<aui:option value="JO">Jordan</aui:option>

						<aui:option value="KZ">Kazakhstan</aui:option>

						<aui:option value="KE">Kenya</aui:option>

						<aui:option value="KI">Kiribati</aui:option>

						<aui:option value="KW">Kuwait</aui:option>

						<aui:option value="KG">Kyrgyzstan</aui:option>

						<aui:option value="LA">Lao People's Democratic Republic</aui:option>

						<aui:option value="LV">Latvia</aui:option>

						<aui:option value="LB">Lebanon</aui:option>

						<aui:option value="LS">Lesotho</aui:option>

						<aui:option value="LR">Liberia</aui:option>

						<aui:option value="LY">Libya</aui:option>

						<aui:option value="LI">Liechtenstein</aui:option>

						<aui:option value="LT">Lithuania</aui:option>

						<aui:option value="LU">Luxembourg</aui:option>

						<aui:option value="MO">Macao</aui:option>

						<aui:option value="MG">Madagascar</aui:option>

						<aui:option value="MW">Malawi</aui:option>

						<aui:option value="MY">Malaysia</aui:option>

						<aui:option value="MV">Maldives</aui:option>

						<aui:option value="ML">Mali</aui:option>

						<aui:option value="MT">Malta</aui:option>

						<aui:option value="MH">Marshall Islands</aui:option>

						<aui:option value="MQ">Martinique</aui:option>

						<aui:option value="MR">Mauritania</aui:option>

						<aui:option value="MU">Mauritius</aui:option>

						<aui:option value="YT">Mayotte</aui:option>

						<aui:option value="MX">Mexico</aui:option>

						<aui:option value="MD">Moldova</aui:option>

						<aui:option value="MC">Monaco</aui:option>

						<aui:option value="MN">Mongolia</aui:option>

						<aui:option value="ME">Montenegro</aui:option>

						<aui:option value="MS">Montserrat</aui:option>

						<aui:option value="MA">Morocco</aui:option>

						<aui:option value="MZ">Mozambique</aui:option>

						<aui:option value="MM">Myanmar</aui:option>

						<aui:option value="NA">Namibia</aui:option>

						<aui:option value="NR">Nauru</aui:option>

						<aui:option value="NP">Nepal</aui:option>

						<aui:option value="NL">Netherlands</aui:option>

						<aui:option value="NC">New Caledonia</aui:option>

						<aui:option value="NZ">New Zealand</aui:option>

						<aui:option value="NI">Nicaragua</aui:option>

						<aui:option value="NE">Niger</aui:option>

						<aui:option value="NG">Nigeria</aui:option>

						<aui:option value="NU">Niue</aui:option>

						<aui:option value="NF">Norfolk Island</aui:option>

						<aui:option value="MP">Northern Mariana Islands</aui:option>

						<aui:option value="MK">North Macedonia</aui:option>

						<aui:option value="NO">Norway</aui:option>

						<aui:option value="OM">Oman</aui:option>

						<aui:option value="PK">Pakistan</aui:option>

						<aui:option value="PW">Palau</aui:option>

						<aui:option value="PS">Palestine</aui:option>

						<aui:option value="PA">Panama</aui:option>

						<aui:option value="PG">Papua New Guinea</aui:option>

						<aui:option value="PY">Paraguay</aui:option>

						<aui:option value="PE">Peru</aui:option>

						<aui:option value="PH">Philippines</aui:option>

						<aui:option value="PN">Pitcairn</aui:option>

						<aui:option value="PL">Poland</aui:option>

						<aui:option value="PT">Portugal</aui:option>

						<aui:option value="PR">Puerto Rico</aui:option>

						<aui:option value="QA">Qatar</aui:option>

						<aui:option value="KR">Republic of Korea</aui:option>

						<aui:option value="RE">Réunion</aui:option>

						<aui:option value="RO">Romania</aui:option>

						<aui:option value="RU">Russian Federation</aui:option>

						<aui:option value="RW">Rwanda</aui:option>

						<aui:option value="BL">Saint Barthélemy</aui:option>

						<aui:option value="SH">Saint Helena</aui:option>

						<aui:option value="KN">Saint Kitts and Nevis</aui:option>

						<aui:option value="LC">Saint Lucia</aui:option>

						<aui:option value="MF">Saint Martin (French part)</aui:option>

						<aui:option value="PM">Saint-Pierre and Miquelon</aui:option>

						<aui:option value="VC">Saint Vincent and the Grenadines</aui:option>

						<aui:option value="WS">Samoa</aui:option>

						<aui:option value="SM">San Marino</aui:option>

						<aui:option value="ST">Sao Tome and Principe</aui:option>

						<aui:option value="SA">Saudi Arabia</aui:option>

						<aui:option value="SN">Senegal</aui:option>

						<aui:option value="RS">Serbia</aui:option>

						<aui:option value="SC">Seychelles</aui:option>

						<aui:option value="SL">Sierra Leone</aui:option>

						<aui:option value="SG">Singapore</aui:option>

						<aui:option value="SX">Sint Maarten (Dutch part)</aui:option>

						<aui:option value="SK">Slovakia</aui:option>

						<aui:option value="SI">Slovenia</aui:option>

						<aui:option value="SB">Solomon Islands</aui:option>

						<aui:option value="SO">Somalia</aui:option>

						<aui:option value="ZA">South Africa</aui:option>

						<aui:option value="GS">South Georgia and the South Sandwich
								Islands</aui:option>

						<aui:option value="SS">South Sudan</aui:option>

						<aui:option value="ES">Spain</aui:option>

						<aui:option value="LK">Sri Lanka</aui:option>

						<aui:option value="SD">Sudan</aui:option>

						<aui:option value="SR">Suriname</aui:option>

						<aui:option value="SJ">Svalbard and Jan Mayen</aui:option>

						<aui:option value="SE">Sweden</aui:option>

						<aui:option value="CH">Switzerland</aui:option>

						<aui:option value="SY">Syrian Arab Republic</aui:option>

						<aui:option value="TW">Taiwan</aui:option>

						<aui:option value="TJ">Tajikistan</aui:option>

						<aui:option value="TZ">Tanzania</aui:option>

						<aui:option value="TH">Thailand</aui:option>

						<aui:option value="TL">Timor-Leste</aui:option>

						<aui:option value="TG">Togo</aui:option>

						<aui:option value="TK">Tokelau</aui:option>

						<aui:option value="TO">Tonga</aui:option>

						<aui:option value="TT">Trinidad and Tobago</aui:option>

						<aui:option value="TN">Tunisia</aui:option>

						<aui:option value="TR">Turkey</aui:option>

						<aui:option value="TM">Turkmenistan</aui:option>

						<aui:option value="TC">Turks and Caicos Islands</aui:option>

						<aui:option value="TV">Tuvalu</aui:option>

						<aui:option value="VI">U.S. Virgin Islands</aui:option>

						<aui:option value="UG">Uganda</aui:option>

						<aui:option value="UA">Ukraine</aui:option>

						<aui:option value="AE">United Arab Emirates</aui:option>

						<aui:option value="GB">United Kingdom</aui:option>

						<aui:option value="UM">United States Minor Outlying Islands</aui:option>

						<aui:option value="US" selected="selected">United States of
								America</aui:option>

						<aui:option value="UY">Uruguay</aui:option>

						<aui:option value="UZ">Uzbekistan</aui:option>

						<aui:option value="VU">Vanuatu</aui:option>

						<aui:option value="VA">Vatican City State</aui:option>

						<aui:option value="VE">Venezuela</aui:option>

						<aui:option value="VN">Vietnam</aui:option>

						<aui:option value="WF">Wallis and Futuna</aui:option>

						<aui:option value="EH">Western Sahara</aui:option>

						<aui:option value="YE">Yemen</aui:option>

						<aui:option value="ZM">Zambia</aui:option>

						<aui:option value="ZW">Zimbabwe</aui:option>

					</optgroup>

				</aui:select>
			</aui:col>
		</aui:col>


		
			<aui:col >
				<div class="mapouter">
					<div class="gmap_canvas"></div>
				</div>
			</aui:col>
		
	</div>
	<aui:button-row>
		<aui:col>
			<br><aui:button name="submitButton" value="Save"  type="submit" cssClass="submitBtn" onClick="formValidation()"/>
		</aui:col>
	</aui:button-row>
</aui:form>



<script>
$('ducument').ready(function(){
	var validationPurpose=1;
	
	
	$('.postalCode').blur(function(){
		  var pCode		=	$(".postalCode").val();
		  $('.error').remove();
			if( !(/^\d*$/.test(pCode)) || pCode.length < 1){
				$('.postalCode').after("<span class='error' >This field required only Digits.</span>");
				$('.postalCode').css("border-color","#CC6677");
				//return false;
			}
			else
				$('.postalCode').css("border-color","#76BD4A");
		  
	
	});
	
	
	
	$('.city ').blur(function(){
		  var city		=	$(".city").val();
		  $('.error').remove();
		  if(city.length < 1){
				$('.city').after("<span class='error'>This field is required.</span>");
				$('.city').css("border-color","#CC6677");
				//return false;	
			}
			else
				$('.city').css("border-color","#76BD4A"); 
	});
	
	
	$('.street').blur(function(){
		  var street	=	$(".street").val();
		  $('.error').remove();
		  if(street.length < 1){
				// alert(street);
				$('.street').after("<span class='error'>This field is required.</span>");
				$('.street').css("border-color","#CC6677");
				return false;	
			}
			else
				$('.street').css("border-color","#76BD4A");
	
	});
	
	
	
	
	
		
	  $('.postalCode , .city , .street').change(function(){
		  var pCode		=	$(".postalCode").val();
		  var city		=	$(".city").val();
		  var street	=	$(".street").val();
		  var responseText		=	pCode+" "+city+" "+street;
		  $('#gmap_canvas').remove();
		  
		  physicalFieldValidation(pCode,city,street);
		
		  
		  
		  	$('.gmap_canvas').append("<iframe width='600' height='300' id='gmap_canvas' src='https://maps.google.com/maps?q="+responseText+"&t=&z=13&ie=UTF8&iwloc=&output=embed' frameborder='0' scrolling='no' marginheight='0' marginwidth='0'></iframe>");
		  
	  });
	  

	  
		$('.onlineVenue').click(function() {
			validationPurpose=2;
			//alert(validationPurpose);
			$('#physicalVenueDetails').hide();

		});
	  
	  
	  
		$('.physicalVenue').click(function() {
			validationPurpose=1;
			$('#physicalVenueDetails').show(100);
		});
		
		
		
		$('.removeValidation').change(function(){
			var pCode=$('.postalCode').val();
			var city=$('.city').val();
			var street= $('.street').val();
		});
//================================================================================================================//
//==================================================formValidation Start==========================================================================================//


 formValidation = function (){
	 var pCode		=	$(".postalCode").val();
	  var city		=	$(".city").val();
	  var street	=	$(".street").val();
		if(validationPurpose	===	  1){
			//alert(" in form "+validationPurpose);
			physicalFieldValidation(pCode,city,street);
		}//if
	}//end formValidation
	
//==================================================formValidation END==========================================================================================//


//==================================================physicalFieldValidation start===============================================================================//
	function physicalFieldValidation(pCode,city,street){
		//alert(pCode+city+street)
		$('.error').remove();
		if( !(/^\d*$/.test(pCode)) || pCode.length < 1){
			$('.postalCode').after("<span class='error' >Digits Required</span>");
			$('.postalCode').css("border-color","#CC6677");
			//return false;
		}
		else
			$('.postalCode').css("border-color","#76BD4A");
		
//==================================================================================================//		
		 if(city.length < 4){
			$('.city').after("<span class='error'>Please Enter City</span>");
			$('.city').css("border-color","#CC6677");
			//return false;	
		}
		else
			$('.city').css("border-color","#76BD4A"); 
		
//=======================================================================================================//		
		 if(street.length < 1){
			// alert(street);
			$('.street').after("<span class='error'>Please Enter Street</span>");
			$('.street').css("border-color","#CC6677");
			return false;	
		}
		else
			$('.street').css("border-color","#76BD4A");
//=======================================================================================================//
	

	}
	
	
	});//jquery ready function

</script>


