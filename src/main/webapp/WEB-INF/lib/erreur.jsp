<%@ page isErrorPage="true" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
            "http://www.w3.org/TR/html4/loose.dtd">
            
 <%@ include file="/WEB-INF/jspf/navigation.jspf" %>
 
 <center>
 <h1>
 <font color="red">Erreur.....</font>
 </h1>
 <p> votre demande n a pas pu aboutir.</p>
 <p> merci de signaler cette erreur.</p>
 <p><%=exception %><br></p>

 </center>
 
  <%@ include file="/WEB-INF/jspf/pieds.jspf" %>
 