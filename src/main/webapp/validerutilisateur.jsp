    <%@ page errorPage="/WEB-INF/lib/erreur.jsp" %>
    <%@ include file="/WEB-INF/jspf/navigation.jspf" %>
    
    <h3 align="center">confirmation de votre demande d'inscription</h3>
    <jsp:useBean id="utilisateur" class="bd.Personne">
     <jsp:setProperty property="*" name="utilisateur"/>
     <form action="validerutilisateur" method="post">
    <p><table>
    <tr><td>nom</td>
    <td><jsp:getProperty name="utilisateur" property="nom" />  </td>
    </tr>
     <tr><td>prenom</td>
    <td><jsp:getProperty name="utilisateur" property="prenom" /> </td>
    </tr>
     <tr><td>mot de passe</td>
    <td><jsp:getProperty name="utilisateur" property="motDePasse" /> </td>
    </tr>
    </table>
    </p>
    <p align="center"> <%if(!utilisateur.enregistrer()){ %>
    <font color="red">ATTENTION : utilisateur deja enregistrer</font>
    <%}
    else { %>
    <font color="red">ATTENTION : nouvelle utilisateur enregistrer</font>
    <%
    }
    utilisateur.arret();
    %>
    </p>
   
    </form>
    </jsp:useBean>
         <%@ include file="/WEB-INF/jspf/pieds.jspf" %>
   
    
    