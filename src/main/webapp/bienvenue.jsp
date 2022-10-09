<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="/WEB-INF/lib/erreur.jsp" import="bd.*" %>
    <%@ include file="/WEB-INF/jspf/navigation.jspf" %>

    <font face="Arial">
    <p><table border="1" cellpadding="3" cellspacing="2" width="90%" align="center">
    <tr bgcolor="#FF6600">
    <th>Sujet</th>
    <th>Message</th>
    </tr>
    <%ListeMessages listeMessages= new ListeMessages(1);
    int ligne=0;
    while (listeMessages.suivant()){
    %>
    
    <tr bgcolor="<%=ligne++% 2 == 0 ? "#FF6600" : "#FFCC00" %>">
    <td><b><%=listeMessages.sujet() %></b></td>
    <td><b><%= listeMessages.text() %></b></td>
    </tr>
    <%}
    listeMessages.arret(); %>
    </table>
    </font>
        <%@ include file ="/WEB-INF/jspf/pieds.jspf" %>
    