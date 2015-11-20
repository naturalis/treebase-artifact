<%@ include file="/common/taglibs.jsp"%>

<ul id="nav">
	<li id="t-info"><a href="<c:url value="/user/updateProfile.html"/>"><fmt:message key="nav.personalinfo"/></a></li>
	<li id="t-submissions"><a href="<c:url value="/user/submissionList.html"/>"><fmt:message key="nav.submissions"/></a></li>
	<li id="t-search"><a href="<c:url value="/search/studySearch.html"/>"><fmt:message key="nav.search.treebase"/></a></li>
	
	<%
		if(request.isUserInRole("Admin") || request.isUserInRole("Associate Editor")){
	%>
	<li id="t-admin"><a href="<c:url value="/admin/administrationPage.html"/>"><fmt:message key="nav.admin"/></a></li>
	<% } %>
	
	<li id="t-home"><a href="<c:url value="/home.html"/>"><fmt:message key="nav.home"/></a></li>
	
</ul>
