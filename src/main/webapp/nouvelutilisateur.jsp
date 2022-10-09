    <%@ page errorPage="/WEB-INF/lib/erreur.jsp" %>
    <%@ include file="/WEB-INF/jspf/navigation.jspf" %>
    <h3 align="center">demande d'inscription</h3>
    <form action="validerutilisateur" method="post">
    <p><table>
    <tr><td>nom</td>
    <td><input type="text" name="nom"></td>
    </tr>
     <tr><td>prenom</td>
    <td><input type="text" name="prenom"></td>
    </tr>
     <tr><td>mot de passe</td>
    <td><input type="password" name="motDePasse"></td>
    </tr>
    </table>
    </p>
    <p align="center"> <input type="submit" value="Nouvel utilisateur"></p>
   
    </form>
     <%@ include file="/WEB-INF/jspf/pieds.jspf" %>