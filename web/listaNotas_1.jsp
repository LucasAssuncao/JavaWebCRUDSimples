<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="br.com.fatec.jdbc.modelo.Geral" %>
<%@page import="br.com.fatec.jdbc.DAO.GeralDAO" %>

<%
    GeralDAO dao = new GeralDAO();
    List<Geral> geral = dao.lista();
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
                                <th>NOME ALUNO</th>
                                <th>NOME PROFESSOR</th>
                                <th>NOME DISCIPLINA</th>
                                <th>#</th>
                                <th>#</th>
                            </tr>
                        </thead>
                        <% for (Geral gerall : geral) {%>

                        <tbody>
                            <tr>
                                <td><%=gerall.getId_notas()%></td>
                                <td><%=gerall.getNota1()%></td>
                                <td><%=gerall.getNota2()%></td>
                                <td><%=gerall.getTrabalho()%></td>
                                <td><%=gerall.getNome_ALUNO()%></td>
                                <td><%=gerall.getNome_PROFESSOR()%></td>
                                <td><%=gerall.getNome_DISCIPLINA()%></td>
                                <td><a href="alteraNotas.jsp?COD=<%=gerall.getId_notas()%>"><i class="icon-pencil"></i></a></td>
                                <td><a href="excluiNotas.jsp?COD=<%=gerall.getId_notas()%>"><i class="icon-trash"></i></a></td>
                            </tr>
                            <% }%>
                    </table>
                </div><!--/span-->
            </div><!--/row-->
        </div>
    </body>
</html>