<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="br.com.fatec.jdbc.modelo.Professor" %>
<%@page import="br.com.fatec.jdbc.DAO.ProfessorDAO" %>

<%
    ProfessorDAO dao = new ProfessorDAO();
    List<Professor> professors = dao.lista();
%>

<html>
    <head>
        <title>Listar Professor</title>
        <%@include file="head.html"%>
    </head>

    <body>
        <%@include file="navbar.html"%>

        <div class="container-fluid">
            <div class="row-fluid">
                <%@include file="sidebar.html"%>
                <div class="span9">
                    <!-- Aqui deve ficar o conteúdo do Container -->

                    <h1>Listar Professor</h1>    
                    <table class="table">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>RG</th>
                                <th>NOME</th>
                                <th>#</th>
                                <th>#</th>
                            </tr>
                        </thead>
                        <% for (Professor professor : professors) {%>

                        <tbody>
                            <tr>
                                <td><%=professor.getId_Professor()%></td>
                                <td><%=professor.getRg_Professor()%></td>
                                <td><%=professor.getNome()%></td>
                                <td><a href="alteraProfessor.jsp?COD=<%=professor.getId_Professor()%>"><i class="icon-pencil"></i></a></td>
                                <td><a href="excluiProfessor.jsp?COD=<%=professor.getId_Professor()%>"><i class="icon-trash"></i></a></td>
                            </tr>
                            <% }%>
                    </table>
                </div><!--/span-->
            </div><!--/row-->
        </div>
    </body>
</html>