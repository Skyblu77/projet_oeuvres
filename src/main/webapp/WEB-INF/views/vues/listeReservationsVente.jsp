<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@include file="header.jsp" %>
<body>
<%@include file="navigation.jsp"%>
<div class="container mt-5 mb-5">
    <h1 class="text-center">Liste des reservations d'oeuvres en vente</h1>
</div>
<div class="row justify-content-center mb-5">
    <div class="col-md-8">
        <a class="btn btn-outline-primary" href="index.htm" role="button">&#8592; Retour accueil</a>
        <c:if test="${ajout}">
            <p class="text-success mt-3">Reservation ajoutée avec succès !</p>
        </c:if>
        <c:if test="${suppression}">
            <p class="text-success mt-3">Reservation supprimée avec succès !</p>
        </c:if>
        <c:if test="${modification}">
            <p class="text-success mt-3">Modification réussie !</p>
        </c:if>
        <table id="tableOeuvres" class="table table-hover mt-3">
            <thead >
            <tr class="text-center bg-primary text-white">
                <th scope="col">Oeuvre</th>
                <th scope="col">Adherent</th>
                <th scope="col">Statut</th>
                <th scope="col">Actions</th>
            </tr>
            </thead>
            <c:forEach items="${reservations}" var="item">
                <tr class="text-center">
                    <th scope="row">${item.oeuvreventeByIdOeuvrevente.getTitreOeuvrevente()}</th>
                    <td>${item.adherentByIdAdherent.getPrenomAdherent()} ${item.adherentByIdAdherent.getNomAdherent()}</td>
                    <td>${item.statut}</td>
                    <td><a class="btn btn-info" href="/reserverOeuvreVente.htm?idO=${item.oeuvreventeByIdOeuvrevente.getIdOeuvrevente()}" role="button"><span
                            class="glyphicon glyphicon-pencil"></span> Modifier</a>
                        <a class="btn btn-danger" href="supprimerReservationVente.htm?idO=${item.oeuvreventeByIdOeuvrevente.getIdOeuvrevente()}" role="button"
                           onclick="return confirm('Êtes-vous sur de vouloir supprimer cette réservation ?')"><span
                                class="glyphicon glyphicon-remove-circle"></span> Supprimer</a></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
<%@include file="footer.jsp"%>
</body>

</html>
