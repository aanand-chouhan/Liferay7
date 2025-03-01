<%@ include file="/init.jsp" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.4.1.min.js" ></script>

 
  <div class="container">
  
		<form class="form-horizontal" action="#">
			<div class="form-group">
				<label class="control-label col-sm-2" for="email">Event*</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="eventName" placeholder="Enter Event Name" name="event">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="start">Start Date*</label>
				<div class="date col-sm-6" >
					<input type="date" class="form-control" id="datepicker" name="start_date"> 
					<span class="input-group-addon">
						<span class="glyphicon-calendar glyphicon"></span>
					</span>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="start">Start Date*</label>
				<div class="col-sm-6">
					<input type="date" class="form-control" id="startDate" id="datepicker">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="end">End Date*</label>
				<div class="col-sm-6">
					<input type="date" class="form-control" id="endDate" name="end_date">
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="type">Event type*</label>
				<div class="col-sm-6">
					<a href="#" class="btn btn-danger" id="showHideVenue">Physical Event</a>
					<a href="#" class="btn btn-danger">Online Event</a>
				</div>
			</div>
		<div id="physicalVenue">	
			<div class="form-group">
				<label class="control-label col-sm-2" for="type">Venue Description</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="venue" placeholder="Enter venue">
				</div>	
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="type">Street</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="street" placeholder="Enter Street">
				</div>	
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="type">Postal code* / City*</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="postalCode" >
					<input type="text" class="form-control" id="city">
				</div>	
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="type">Country*</label>
				<div class="col-sm-6">
					<select name="country">
						<option>Select country</option>
							<option value="AT">Austria</option>

							<option value="FR">France</option>

							<option value="DE">Germany</option>

							<option value="IT">Italy</option>

							<option value="NL">Netherlands</option>

							<option value="ES">Spain</option>

							<option value="CH">Switzerland</option>

							<option value="GB">United Kingdom</option>

							<option value="US" selected="selected">United States of America</option>


							<optgroup label="more countries">

								<option value="AF">Afghanistan</option>

								<option value="AX">Åland Islands</option>

								<option value="AL">Albania</option>

								<option value="DZ">Algeria</option>

								<option value="AS">American Samoa</option>

								<option value="AD">Andorra</option>

								<option value="AO">Angola</option>

								<option value="AI">Anguilla</option>

								<option value="AQ">Antarctica</option>

								<option value="AG">Antigua and Barbuda</option>

								<option value="AR">Argentina</option>

								<option value="AM">Armenia</option>

								<option value="AW">Aruba</option>

								<option value="AU">Australia</option>

								<option value="AT">Austria</option>

								<option value="AZ">Azerbaijan</option>

								<option value="BS">Bahamas</option>

								<option value="BH">Bahrain</option>

								<option value="BD">Bangladesh</option>

								<option value="BB">Barbados</option>

								<option value="BY">Belarus</option>

								<option value="BE">Belgium</option>

								<option value="BZ">Belize</option>

								<option value="BJ">Benin</option>

								<option value="BM">Bermuda</option>

								<option value="BT">Bhutan</option>

								<option value="BO">Bolivia</option>

								<option value="BQ">Bonaire, Sint Eustatius and Saba</option>

								<option value="BA">Bosnia and Herzegovina</option>

								<option value="BW">Botswana</option>

								<option value="BV">Bouvet Island</option>

								<option value="BR">Brazil</option>

								<option value="IO">British Indian Ocean Territory</option>

								<option value="VG">British Virgin Islands</option>

								<option value="BN">Brunei Darussalam</option>

								<option value="BG">Bulgaria</option>

								<option value="BF">Burkina Faso</option>

								<option value="BI">Burundi</option>

								<option value="KH">Cambodia</option>

								<option value="CM">Cameroon</option>

								<option value="CA">Canada</option>

								<option value="CV">Cape Verde</option>

								<option value="KY">Cayman Islands</option>

								<option value="CF">Central African</option>

								<option value="TD">Chad</option>

								<option value="CL">Chile</option>

								<option value="CN">China</option>

								<option value="CX">Christmas Island</option>

								<option value="CC">Cocos (Keeling) Islands</option>

								<option value="CO">Colombia</option>

								<option value="KM">Comoros</option>

								<option value="CG">Congo Brazzaville</option>

								<option value="CK">Cook Islands</option>

								<option value="CR">Costa Rica</option>

								<option value="CI">Côte d'Ivoire</option>

								<option value="HR">Croatia</option>

								<option value="CU">Cuba</option>

								<option value="CW">Curaçao</option>

								<option value="CY">Cyprus</option>

								<option value="CZ">Czech Republic</option>

								<option value="KP">Democratic People's Republic of
									Korea</option>

								<option value="CD">Democratic Republic Of The Congo</option>

								<option value="DK">Denmark</option>

								<option value="DJ">Djibouti</option>

								<option value="DM">Dominica</option>

								<option value="DO">Dominican Republic</option>

								<option value="EC">Ecuador</option>

								<option value="EG">Egypt</option>

								<option value="SV">El Salvador</option>

								<option value="GQ">Equatorial Guinea</option>

								<option value="ER">Eritrea</option>

								<option value="EE">Estonia</option>

								<option value="SZ">Eswatini</option>

								<option value="ET">Ethiopia</option>

								<option value="FK">Falkland Islands</option>

								<option value="FO">Faroe Islands</option>

								<option value="FM">Federated States of Micronesia</option>

								<option value="FJ">Fiji</option>

								<option value="FI">Finland</option>

								<option value="FR">France</option>

								<option value="GF">French Guiana</option>

								<option value="PF">French Polynesia</option>

								<option value="TF">French Southern Territories</option>

								<option value="GA">Gabon</option>

								<option value="GM">Gambia</option>

								<option value="GE">Georgia</option>

								<option value="DE">Germany</option>

								<option value="GH">Ghana</option>

								<option value="GI">Gibraltar</option>

								<option value="GR">Greece</option>

								<option value="GL">Greenland</option>

								<option value="GD">Grenada</option>

								<option value="GP">Guadeloupe</option>

								<option value="GU">Guam</option>

								<option value="GT">Guatemala</option>

								<option value="GG">Guernsey</option>

								<option value="GN">Guinea</option>

								<option value="GW">Guinea-Bissau</option>

								<option value="GY">Guyana</option>

								<option value="HT">Haiti</option>

								<option value="HM">Heard Island and McDonald Islands</option>

								<option value="HN">Honduras</option>

								<option value="HK">Hong Kong</option>

								<option value="HU">Hungary</option>

								<option value="IS">Iceland</option>

								<option value="IN">India</option>

								<option value="ID">Indonesia</option>

								<option value="IQ">Iraq</option>

								<option value="IE">Ireland</option>

								<option value="IR">Islamic Republic of Iran</option>

								<option value="IM">Isle of Man</option>

								<option value="IL">Israel</option>

								<option value="IT">Italy</option>

								<option value="JM">Jamaica</option>

								<option value="JP">Japan</option>

								<option value="JE">Jersey</option>

								<option value="JO">Jordan</option>

								<option value="KZ">Kazakhstan</option>

								<option value="KE">Kenya</option>

								<option value="KI">Kiribati</option>

								<option value="KW">Kuwait</option>

								<option value="KG">Kyrgyzstan</option>

								<option value="LA">Lao People's Democratic Republic</option>

								<option value="LV">Latvia</option>

								<option value="LB">Lebanon</option>

								<option value="LS">Lesotho</option>

								<option value="LR">Liberia</option>

								<option value="LY">Libya</option>

								<option value="LI">Liechtenstein</option>

								<option value="LT">Lithuania</option>

								<option value="LU">Luxembourg</option>

								<option value="MO">Macao</option>

								<option value="MG">Madagascar</option>

								<option value="MW">Malawi</option>

								<option value="MY">Malaysia</option>

								<option value="MV">Maldives</option>

								<option value="ML">Mali</option>

								<option value="MT">Malta</option>

								<option value="MH">Marshall Islands</option>

								<option value="MQ">Martinique</option>

								<option value="MR">Mauritania</option>

								<option value="MU">Mauritius</option>

								<option value="YT">Mayotte</option>

								<option value="MX">Mexico</option>

								<option value="MD">Moldova</option>

								<option value="MC">Monaco</option>

								<option value="MN">Mongolia</option>

								<option value="ME">Montenegro</option>

								<option value="MS">Montserrat</option>

								<option value="MA">Morocco</option>

								<option value="MZ">Mozambique</option>

								<option value="MM">Myanmar</option>

								<option value="NA">Namibia</option>

								<option value="NR">Nauru</option>

								<option value="NP">Nepal</option>

								<option value="NL">Netherlands</option>

								<option value="NC">New Caledonia</option>

								<option value="NZ">New Zealand</option>

								<option value="NI">Nicaragua</option>

								<option value="NE">Niger</option>

								<option value="NG">Nigeria</option>

								<option value="NU">Niue</option>

								<option value="NF">Norfolk Island</option>

								<option value="MP">Northern Mariana Islands</option>

								<option value="MK">North Macedonia</option>

								<option value="NO">Norway</option>

								<option value="OM">Oman</option>

								<option value="PK">Pakistan</option>

								<option value="PW">Palau</option>

								<option value="PS">Palestine</option>

								<option value="PA">Panama</option>

								<option value="PG">Papua New Guinea</option>

								<option value="PY">Paraguay</option>

								<option value="PE">Peru</option>

								<option value="PH">Philippines</option>

								<option value="PN">Pitcairn</option>

								<option value="PL">Poland</option>

								<option value="PT">Portugal</option>

								<option value="PR">Puerto Rico</option>

								<option value="QA">Qatar</option>

								<option value="KR">Republic of Korea</option>

								<option value="RE">Réunion</option>

								<option value="RO">Romania</option>

								<option value="RU">Russian Federation</option>

								<option value="RW">Rwanda</option>

								<option value="BL">Saint Barthélemy</option>

								<option value="SH">Saint Helena</option>

								<option value="KN">Saint Kitts and Nevis</option>

								<option value="LC">Saint Lucia</option>

								<option value="MF">Saint Martin (French part)</option>

								<option value="PM">Saint-Pierre and Miquelon</option>

								<option value="VC">Saint Vincent and the Grenadines</option>

								<option value="WS">Samoa</option>

								<option value="SM">San Marino</option>

								<option value="ST">Sao Tome and Principe</option>

								<option value="SA">Saudi Arabia</option>

								<option value="SN">Senegal</option>

								<option value="RS">Serbia</option>

								<option value="SC">Seychelles</option>

								<option value="SL">Sierra Leone</option>

								<option value="SG">Singapore</option>

								<option value="SX">Sint Maarten (Dutch part)</option>

								<option value="SK">Slovakia</option>

								<option value="SI">Slovenia</option>

								<option value="SB">Solomon Islands</option>

								<option value="SO">Somalia</option>

								<option value="ZA">South Africa</option>

								<option value="GS">South Georgia and the South Sandwich
									Islands</option>

								<option value="SS">South Sudan</option>

								<option value="ES">Spain</option>

								<option value="LK">Sri Lanka</option>

								<option value="SD">Sudan</option>

								<option value="SR">Suriname</option>

								<option value="SJ">Svalbard and Jan Mayen</option>

								<option value="SE">Sweden</option>

								<option value="CH">Switzerland</option>

								<option value="SY">Syrian Arab Republic</option>

								<option value="TW">Taiwan</option>

								<option value="TJ">Tajikistan</option>

								<option value="TZ">Tanzania</option>

								<option value="TH">Thailand</option>

								<option value="TL">Timor-Leste</option>

								<option value="TG">Togo</option>

								<option value="TK">Tokelau</option>

								<option value="TO">Tonga</option>

								<option value="TT">Trinidad and Tobago</option>

								<option value="TN">Tunisia</option>

								<option value="TR">Turkey</option>

								<option value="TM">Turkmenistan</option>

								<option value="TC">Turks and Caicos Islands</option>

								<option value="TV">Tuvalu</option>

								<option value="VI">U.S. Virgin Islands</option>

								<option value="UG">Uganda</option>

								<option value="UA">Ukraine</option>

								<option value="AE">United Arab Emirates</option>

								<option value="GB">United Kingdom</option>

								<option value="UM">United States Minor Outlying Islands</option>

								<option value="US" selected="selected">United States of
									America</option>

								<option value="UY">Uruguay</option>

								<option value="UZ">Uzbekistan</option>

								<option value="VU">Vanuatu</option>

								<option value="VA">Vatican City State</option>

								<option value="VE">Venezuela</option>

								<option value="VN">Vietnam</option>

								<option value="WF">Wallis and Futuna</option>

								<option value="EH">Western Sahara</option>

								<option value="YE">Yemen</option>

								<option value="ZM">Zambia</option>

								<option value="ZW">Zimbabwe</option>

							</optgroup>
						</select>
				</div>	
			</div>
		</div>	
			<!-- <div class="form-group">
				<label class="control-label col-sm-2" for="type">state*</label>
				<div class="col-sm-6">
					<select name="state">
						<option>Select state</option>
						<option>Mp</option>
						<option>USA</option>
						<option>Japan</option>
						<option>Chaina</option>
					</select>
				</div>	
			</div> -->
			
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-info">SAVE AND MANAGE THE EVENT</button>
				</div>
			</div>
		</form>
	</div>
  	
 <!-- <div class="container">
	<form class="form-horizontal" action="#" id="first_form" method="POST">
		<div class="form-group">
			<label class="control-label col-sm-2" for="event">Event*</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="eventName"
					placeholder="Enter Event Name" name="Event" required
					pattern="([A-z0-9À-ž\s]){2,}">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="startDate">Start
				Date*</label>
			<div class="col-sm-6">
				<div class="input-group">
					<input type="datetime-local" class="form-control" id="startDate"
						class="datepicker" name="Start_Date"> <span
						class="input-group-addon"> <span
						class="glyphicon-calendar glyphicon"></span>
					</span>
				</div>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="endDate">End Date*</label>
			<div class="col-sm-6">
				<div class="input-group">
					<input type="datetime-local" class="form-control" id="endDate"
						class="datepicker" name="End_Date"> <span
						class="input-group-addon"> <span
						class="glyphicon-calendar glyphicon"></span>
					</span>
				</div>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="eventType">Event
				type*</label>
			<div class="col-sm-6">
				<a class="btn btn-danger" id="physicalVenue">Physical Event</a> <a
					class="btn btn-danger" id="onlineVenue">Online Event </a>
			</div>
		</div>

		<div id="physicalVenueDetails" style="display: none;">
			<div class="form-group">
				<label class="control-label col-sm-2" for="venueDetails">Venue
					Description</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="venue"
						placeholder="Enter venue" name="Venue_Description">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="street">Street</label>
				<div class="col-sm-6">
					<input type="text" name="Street" class="form-control" id="street"
						placeholder="Enter Street">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="type">Postal
					code* / City*</label>
				<div class="col-sm-6">
					<div class="col-sm-2 postalCode">
						<input type="text" class="form-control" id="postalCode"
							name="Postal_code" placeholder="postal code">
					</div>
					<div class="col-sm-10 city">
						<input type="text" class="form-control" id="city" name="City"
							placeholder="city">
					</div>

				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="type">Country*</label>
				<div class="col-sm-6">
					<select name="Country" class="form-control">
						<option>Select country</option>
						<option value="AT">Austria</option>

						<option value="FR">France</option>

						<option value="DE">Germany</option>

						<option value="IT">Italy</option>

						<option value="NL">Netherlands</option>

						<option value="ES">Spain</option>

						<option value="CH">Switzerland</option>

						<option value="GB">United Kingdom</option>

						<option value="US" selected="selected">United States of
							America</option>


						<optgroup label="more countries">

							<option value="AF">Afghanistan</option>

							<option value="AX">Åland Islands</option>

							<option value="AL">Albania</option>

							<option value="DZ">Algeria</option>

							<option value="AS">American Samoa</option>

							<option value="AD">Andorra</option>

							<option value="AO">Angola</option>

							<option value="AI">Anguilla</option>

							<option value="AQ">Antarctica</option>

							<option value="AG">Antigua and Barbuda</option>

							<option value="AR">Argentina</option>

							<option value="AM">Armenia</option>

							<option value="AW">Aruba</option>

							<option value="AU">Australia</option>

							<option value="AT">Austria</option>

							<option value="AZ">Azerbaijan</option>

							<option value="BS">Bahamas</option>

							<option value="BH">Bahrain</option>

							<option value="BD">Bangladesh</option>

							<option value="BB">Barbados</option>

							<option value="BY">Belarus</option>

							<option value="BE">Belgium</option>

							<option value="BZ">Belize</option>

							<option value="BJ">Benin</option>

							<option value="BM">Bermuda</option>

							<option value="BT">Bhutan</option>

							<option value="BO">Bolivia</option>

							<option value="BQ">Bonaire, Sint Eustatius and Saba</option>

							<option value="BA">Bosnia and Herzegovina</option>

							<option value="BW">Botswana</option>

							<option value="BV">Bouvet Island</option>

							<option value="BR">Brazil</option>

							<option value="IO">British Indian Ocean Territory</option>

							<option value="VG">British Virgin Islands</option>

							<option value="BN">Brunei Darussalam</option>

							<option value="BG">Bulgaria</option>

							<option value="BF">Burkina Faso</option>

							<option value="BI">Burundi</option>

							<option value="KH">Cambodia</option>

							<option value="CM">Cameroon</option>

							<option value="CA">Canada</option>

							<option value="CV">Cape Verde</option>

							<option value="KY">Cayman Islands</option>

							<option value="CF">Central African</option>

							<option value="TD">Chad</option>

							<option value="CL">Chile</option>

							<option value="CN">China</option>

							<option value="CX">Christmas Island</option>

							<option value="CC">Cocos (Keeling) Islands</option>

							<option value="CO">Colombia</option>

							<option value="KM">Comoros</option>

							<option value="CG">Congo Brazzaville</option>

							<option value="CK">Cook Islands</option>

							<option value="CR">Costa Rica</option>

							<option value="CI">Côte d'Ivoire</option>

							<option value="HR">Croatia</option>

							<option value="CU">Cuba</option>

							<option value="CW">Curaçao</option>

							<option value="CY">Cyprus</option>

							<option value="CZ">Czech Republic</option>

							<option value="KP">Democratic People's Republic of Korea</option>

							<option value="CD">Democratic Republic Of The Congo</option>

							<option value="DK">Denmark</option>

							<option value="DJ">Djibouti</option>

							<option value="DM">Dominica</option>

							<option value="DO">Dominican Republic</option>

							<option value="EC">Ecuador</option>

							<option value="EG">Egypt</option>

							<option value="SV">El Salvador</option>

							<option value="GQ">Equatorial Guinea</option>

							<option value="ER">Eritrea</option>

							<option value="EE">Estonia</option>

							<option value="SZ">Eswatini</option>

							<option value="ET">Ethiopia</option>

							<option value="FK">Falkland Islands</option>

							<option value="FO">Faroe Islands</option>

							<option value="FM">Federated States of Micronesia</option>

							<option value="FJ">Fiji</option>

							<option value="FI">Finland</option>

							<option value="FR">France</option>

							<option value="GF">French Guiana</option>

							<option value="PF">French Polynesia</option>

							<option value="TF">French Southern Territories</option>

							<option value="GA">Gabon</option>

							<option value="GM">Gambia</option>

							<option value="GE">Georgia</option>

							<option value="DE">Germany</option>

							<option value="GH">Ghana</option>

							<option value="GI">Gibraltar</option>

							<option value="GR">Greece</option>

							<option value="GL">Greenland</option>

							<option value="GD">Grenada</option>

							<option value="GP">Guadeloupe</option>

							<option value="GU">Guam</option>

							<option value="GT">Guatemala</option>

							<option value="GG">Guernsey</option>

							<option value="GN">Guinea</option>

							<option value="GW">Guinea-Bissau</option>

							<option value="GY">Guyana</option>

							<option value="HT">Haiti</option>

							<option value="HM">Heard Island and McDonald Islands</option>

							<option value="HN">Honduras</option>

							<option value="HK">Hong Kong</option>

							<option value="HU">Hungary</option>

							<option value="IS">Iceland</option>

							<option value="IN">India</option>

							<option value="ID">Indonesia</option>

							<option value="IQ">Iraq</option>

							<option value="IE">Ireland</option>

							<option value="IR">Islamic Republic of Iran</option>

							<option value="IM">Isle of Man</option>

							<option value="IL">Israel</option>

							<option value="IT">Italy</option>

							<option value="JM">Jamaica</option>

							<option value="JP">Japan</option>

							<option value="JE">Jersey</option>

							<option value="JO">Jordan</option>

							<option value="KZ">Kazakhstan</option>

							<option value="KE">Kenya</option>

							<option value="KI">Kiribati</option>

							<option value="KW">Kuwait</option>

							<option value="KG">Kyrgyzstan</option>

							<option value="LA">Lao People's Democratic Republic</option>

							<option value="LV">Latvia</option>

							<option value="LB">Lebanon</option>

							<option value="LS">Lesotho</option>

							<option value="LR">Liberia</option>

							<option value="LY">Libya</option>

							<option value="LI">Liechtenstein</option>

							<option value="LT">Lithuania</option>

							<option value="LU">Luxembourg</option>

							<option value="MO">Macao</option>

							<option value="MG">Madagascar</option>

							<option value="MW">Malawi</option>

							<option value="MY">Malaysia</option>

							<option value="MV">Maldives</option>

							<option value="ML">Mali</option>

							<option value="MT">Malta</option>

							<option value="MH">Marshall Islands</option>

							<option value="MQ">Martinique</option>

							<option value="MR">Mauritania</option>

							<option value="MU">Mauritius</option>

							<option value="YT">Mayotte</option>

							<option value="MX">Mexico</option>

							<option value="MD">Moldova</option>

							<option value="MC">Monaco</option>

							<option value="MN">Mongolia</option>

							<option value="ME">Montenegro</option>

							<option value="MS">Montserrat</option>

							<option value="MA">Morocco</option>

							<option value="MZ">Mozambique</option>

							<option value="MM">Myanmar</option>

							<option value="NA">Namibia</option>

							<option value="NR">Nauru</option>

							<option value="NP">Nepal</option>

							<option value="NL">Netherlands</option>

							<option value="NC">New Caledonia</option>

							<option value="NZ">New Zealand</option>

							<option value="NI">Nicaragua</option>

							<option value="NE">Niger</option>

							<option value="NG">Nigeria</option>

							<option value="NU">Niue</option>

							<option value="NF">Norfolk Island</option>

							<option value="MP">Northern Mariana Islands</option>

							<option value="MK">North Macedonia</option>

							<option value="NO">Norway</option>

							<option value="OM">Oman</option>

							<option value="PK">Pakistan</option>

							<option value="PW">Palau</option>

							<option value="PS">Palestine</option>

							<option value="PA">Panama</option>

							<option value="PG">Papua New Guinea</option>

							<option value="PY">Paraguay</option>

							<option value="PE">Peru</option>

							<option value="PH">Philippines</option>

							<option value="PN">Pitcairn</option>

							<option value="PL">Poland</option>

							<option value="PT">Portugal</option>

							<option value="PR">Puerto Rico</option>

							<option value="QA">Qatar</option>

							<option value="KR">Republic of Korea</option>

							<option value="RE">Réunion</option>

							<option value="RO">Romania</option>

							<option value="RU">Russian Federation</option>

							<option value="RW">Rwanda</option>

							<option value="BL">Saint Barthélemy</option>

							<option value="SH">Saint Helena</option>

							<option value="KN">Saint Kitts and Nevis</option>

							<option value="LC">Saint Lucia</option>

							<option value="MF">Saint Martin (French part)</option>

							<option value="PM">Saint-Pierre and Miquelon</option>

							<option value="VC">Saint Vincent and the Grenadines</option>

							<option value="WS">Samoa</option>

							<option value="SM">San Marino</option>

							<option value="ST">Sao Tome and Principe</option>

							<option value="SA">Saudi Arabia</option>

							<option value="SN">Senegal</option>

							<option value="RS">Serbia</option>

							<option value="SC">Seychelles</option>

							<option value="SL">Sierra Leone</option>

							<option value="SG">Singapore</option>

							<option value="SX">Sint Maarten (Dutch part)</option>

							<option value="SK">Slovakia</option>

							<option value="SI">Slovenia</option>

							<option value="SB">Solomon Islands</option>

							<option value="SO">Somalia</option>

							<option value="ZA">South Africa</option>

							<option value="GS">South Georgia and the South Sandwich
								Islands</option>

							<option value="SS">South Sudan</option>

							<option value="ES">Spain</option>

							<option value="LK">Sri Lanka</option>

							<option value="SD">Sudan</option>

							<option value="SR">Suriname</option>

							<option value="SJ">Svalbard and Jan Mayen</option>

							<option value="SE">Sweden</option>

							<option value="CH">Switzerland</option>

							<option value="SY">Syrian Arab Republic</option>

							<option value="TW">Taiwan</option>

							<option value="TJ">Tajikistan</option>

							<option value="TZ">Tanzania</option>

							<option value="TH">Thailand</option>

							<option value="TL">Timor-Leste</option>

							<option value="TG">Togo</option>

							<option value="TK">Tokelau</option>

							<option value="TO">Tonga</option>

							<option value="TT">Trinidad and Tobago</option>

							<option value="TN">Tunisia</option>

							<option value="TR">Turkey</option>

							<option value="TM">Turkmenistan</option>

							<option value="TC">Turks and Caicos Islands</option>

							<option value="TV">Tuvalu</option>

							<option value="VI">U.S. Virgin Islands</option>

							<option value="UG">Uganda</option>

							<option value="UA">Ukraine</option>

							<option value="AE">United Arab Emirates</option>

							<option value="GB">United Kingdom</option>

							<option value="UM">United States Minor Outlying Islands</option>

							<option value="US" selected="selected">United States of
								America</option>

							<option value="UY">Uruguay</option>

							<option value="UZ">Uzbekistan</option>

							<option value="VU">Vanuatu</option>

							<option value="VA">Vatican City State</option>

							<option value="VE">Venezuela</option>

							<option value="VN">Vietnam</option>

							<option value="WF">Wallis and Futuna</option>

							<option value="EH">Western Sahara</option>

							<option value="YE">Yemen</option>

							<option value="ZM">Zambia</option>

							<option value="ZW">Zimbabwe</option>

						</optgroup>
					</select>
				</div>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="button" class="btn btn-info createEventSubmit">SAVE
					AND MANAGE THE EVENT</button>
			</div>
		</div>

	</form>
</div>
 -->
  
  
  
 <script> 
  /* 	$(function () {
  		alert('comnig');
            $('#datepicker').datepicker({
            	 startDate: new Date()
            });
        }); */
        $('document').ready(function(){
        	$(function () {
          	    $("[id*=datepicker]").datepicker({
          	        minDate: new Date(),
          	        onSelect: function (selected) {
          	            var dt = new Date(selected);
          	            dt.setDate(dt.getDate() + 1);
          	        }
          	    });
          	   
          	});
        	$("#physicalVenue").hide();
        	
        	$("#showHideVenue").click(function(){
        		alert("yes");
        		$("#physicalVenue").show();
        	})
        });
  	
        </script>
 