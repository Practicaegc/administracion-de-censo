<%--
 * select.tag
 *
 * Copyright (C) 2014 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 --%>

<%@ tag language="java" body-content="empty" %>

<%-- Taglibs --%>

<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="acme" tagdir="/WEB-INF/tags" %>

<%-- Attributes --%> 

<%@ attribute name="month_new" required="true" %>
<%@ attribute name="month_act" required="true" %>

<%@ attribute name="id" required="true" %>
<%@ attribute name="onchange" required="false" %>

<jstl:if test="${onchange == null}">
	<jstl:set var="onchange" value="javascript: return true;" />
</jstl:if>

<%-- Definition --%>

<select id="${id}" onchange="${onchange}">		
		<jstl:if test="${month_new == 1 || month_act == 0}">
			<option selected="selected" value="1">January/Enero</option>
		</jstl:if> 		
		<jstl:if test="${month_new != 1 && month_act != 0}">
			<option value="1">January/Enero</option>
		</jstl:if>
		
		<jstl:if test="${month_new == 2 || month_act == 1}">
			<option selected="selected" value="2">February/Febrero</option>
		</jstl:if> 
		<jstl:if test="${month_new != 2 && month_act != 1}">
			<option value="2">February/Febrero</option> 
		</jstl:if>		
		
		<jstl:if test="${month_new == 3 || month_act == 2}">
			<option selected="selected" value="3">March/Marzo</option>
		</jstl:if> 
		<jstl:if test="${month_new != 3 && month_act != 2}">
			<option value="3">March/Marzo</option>
		</jstl:if>
		
		<jstl:if test="${month_new == 4 || month_act == 3}">
			<option selected="selected" value="4">April/Abril</option>
		</jstl:if> 
		<jstl:if test="${month_new != 4 && month_act != 3}">
			<option value="4">April/Abril</option>
		</jstl:if>	
		
		<jstl:if test="${month_new == 5 || month_act == 4}">
			<option selected="selected" value="5">May/Mayo</option>
		</jstl:if> 
		<jstl:if test="${month_new != 5 && month_act != 4}">
			<option value="5">May/Mayo</option>
		</jstl:if>
		
		<jstl:if test="${month_new == 6 || month_act == 5}">
			<option selected="selected" value="6">June/Junio</option>
		</jstl:if> 
		<jstl:if test="${month_new != 6 && month_act != 5}">
			<option value="6">June/Junio</option>
		</jstl:if>
		
		<jstl:if test="${month_new == 7 || month_act == 6}">
			<option selected="selected" value="7">July/Julio</option>
		</jstl:if> 
		<jstl:if test="${month_new != 7 && month_act != 6}">
			<option value="7">July/Julio</option>
		</jstl:if>
		
		<jstl:if test="${month_new == 8 || month_act == 7}">
			<option selected="selected" value="8">August/Agosto</option>
		</jstl:if> 
		<jstl:if test="${month_new != 8 && month_act != 7}">
			<option value="8">August/Agosto</option>
		</jstl:if>
		
		<jstl:if test="${month_new == 9 || month_act == 8}">
			<option selected="selected" value="9">September/Septiembre</option>
		</jstl:if> 
		<jstl:if test="${month_new != 9 && month_act != 8}">
			<option value="9">September/Septiembre</option>
		</jstl:if>
		
		<jstl:if test="${month_new == 10 || month_act == 9}">
			<option selected="selected" value="10">October/Octubre</option>
		</jstl:if> 
		<jstl:if test="${month_new != 10 && month_act != 9}">
			<option value="10">October/Octubre</option>
		</jstl:if>
		
		<jstl:if test="${month_new == 11 || month_act == 10}">
			<option selected="selected" value="11">November/Noviembre</option>
		</jstl:if> 
		<jstl:if test="${month_new != 11 && month_act != 10}">
			<option value="11">November/Noviembre</option>
		</jstl:if>
		
		<jstl:if test="${month_new == 12 || month_act == 11}">
			<option selected="selected" value="12">December/Diciembre</option>
		</jstl:if> 
		<jstl:if test="${month_new != 12 && month_act != 11}">
			<option value="12">December/Diciembre</option>
		</jstl:if>
		
	</select>