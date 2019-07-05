
<%@ include file="init.jsp"%>




<liferay-portlet:actionURL portletConfiguration="<%=true%>"
	var="configurationActionURL" />

<liferay-portlet:renderURL portletConfiguration="<%=true%>"
	var="configurationRenderURL" />
<div class="container-fluid">
	<div class="col-md-6">

		<aui:form action="<%=configurationActionURL%>" method="post" name="fm">

			<aui:row>
				<aui:input cssClass="content" type="textarea" label="ngoui.Survey-Iframe-Code"
					name="survayForm" />
			</aui:row>
			<aui:button-row>
				<aui:button type="submit"></aui:button>
			</aui:button-row>
		</aui:form>

	</div>
	<div class="col-md-6">

		preview: 
			<div class="btn button preview_button">get Priventtnng</div>
		<div class="col-md-12 form_preview">
		</div>

	</div>

</div>



<script>
$(document).ready(function(){
    $(".preview_button").click(function(){
    	var html = $(".content").val();
    	$(".form_preview").append(html);
    });
})


//var html = '<iframe width="560" height="315" src="https://www.youtube.com/embed/owsfdh4gxyc" frameborder="0" allowfullscreen></iframe>';

</script>