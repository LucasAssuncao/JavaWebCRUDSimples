<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="br.com.fatec.jdbc.modelo.Notas" %>
<%@page import="br.com.fatec.jdbc.DAO.NotasDAO" %>

<%
    NotasDAO dao = new NotasDAO();
    List<Notas> notas = dao.lista();
%>

<html>
    <head>
        <title>Listar Notas</title>
        <%@include file="head.html"%>
    </head>

    <body>
        <%@include file="navbar.html"%>

        <div class="container-fluid">
            <div class="row-fluid">
                <%@include file="sidebar.html"%>
                <div class="span9">
                    <!-- Aqui deve ficar o conteúdo do Container -->

                    <h1>Listar Notas</h1>    
                    <table class="table">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>NOTA 1</th>
                                <th>NOTA 2</th>
                                <th>TRABALHO</th>
                                <th>ID ALUNO</th>
                                <th>ID PROFESSOR</th>
                                <th>ID DISCIPLINA</th>
                                <th>#</th>
                                <th>#</th>
                            </tr>
                        </thead>
                        <% for (Notas notass : notas) {%>

                        <tbody>
                            <tr>
                                <td><%=notass.getId_notas()%></td>
                                <td><%=notass.getNota1()%></td>
                                <td><%=notass.getNota2()%></td>
                                <td><%=notass.getTrabalho()%></td>
                                <td><%=notass.getId_Aluno()%></td>
                                <td><%=notass.getId_professor()%></td>
                                <td><%=notass.getId_disciplina()%></td>
                                <td><a href="alteraNotas.jsp?COD=<%=notass.getId_notas()%>"><i class="icon-pencil"></i></a></td>
                                <td><a href="excluiNotas.jsp?COD=<%=notass.getId_notas()%>"><i class="icon-trash"></i></a></td>
                            </tr>
                            <% }%>
                    </table>
                </div><!--/span-->
            </div><!--/row-->
        </div>
    </body>
</html>