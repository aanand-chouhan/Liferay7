<%@ include file="/init.jsp" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.4.1.min.js" ></script>
  <script src="https://cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/a549aa8780dbda16f6cff545aeabc3d71073911e/build/css/bootstrap-datetimepicker.css"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment-with-locales.js"></script>
  <script src="https://cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/a549aa8780dbda16f6cff545aeabc3d71073911e/src/js/bootstrap-datetimepicker.js"></script>
 <<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.min.js">
<!--

//-->
</script>
 
  <div class="container">
  	<div >
		<form class="form-horizontal" action="#">
			<div class="form-group">
				<label class="control-label col-sm-2" for="email">Event*</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="eventName" placeholder="Enter Event Name">
				</div>
			</div>
			<!-- <div class="form-group">
				<label class="control-label col-sm-2" for="start">Start Date*</label>
				<div class="date col-sm-6" >
					<input type="date" class="form-control" id="datepicker"/> 
					<span class="input-group-addon">
						<span class="glyphicon-calendar glyphicon"></span>
					</span>
				</div>
			</div> -->
			<div class="form-group">
				<label class="control-label col-sm-2" for="start">Start Date*</label>
				<div class="col-sm-6">
					<input type="date" class="form-control" id="startDate" id="datepicker">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="end">End Date*</label>
				<div class="col-sm-6">
					<input type="date" class="form-control" id="endDate">
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
						<option>India</option>
						<option>USA</option>
						<option>Japan</option>
						<option>Chaina</option>
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
  	
  </div>
  
  
  
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