<%-- 
    Document   : smssuccess
    Created on : Mar 7, 2019, 9:14:52 PM
    Author     : BABLESH RAJPOOT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
 String otp=(String)request.getAttribute("otp");
 out.println(otp);
%>