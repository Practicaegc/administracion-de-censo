<%--
 * action-2.jsp
 *
 * Copyright (C) 2013 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 --%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl"	uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags" %>

		
		<spring:message code="census.name" />
		<jstl:out value="${census.name}"/><br/>
		<spring:message code="census.date" />
		<jstl:out value="${census.date}"/><br/><br/>
	
<br/>

<jstl:if test="${!empty census.users}">

	<display:table pagesize="5" class="displaytag" name="users" requestURI="${requestURI}" id="row">
		
		<!-- Action links -->
		
		<!-- Attributes -->
		<spring:message code="user.name" var="nameHeader" />
		<display:column property="name" title="${nameHeader}" sortable="true" />
	
		<display:column>
			<a href="census/addUser.do?censusId=${census.id}&${row.id}">
				<spring:message	code="census.add" />
			</a>
		</display:column>
		
		
	</display:table>
	<br/>
	<br/>

</jstl:if>

<jstl:if test="${empty census.users}">

	<h3><spring:message code="census.nousers"  /></h3>

</jstl:if>

<jstl:if test="${empty census.users}">
	
	<acme:cancel url="census/delete.do?censusId=${census.id }" code="census.delete"/>
	
</jstl:if>
<acme:cancel url="census/edit.do?censusId=${census.id }" code="census.edit"/>
