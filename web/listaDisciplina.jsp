<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="br.com.fatec.jdbc.modelo.Disciplina" %>
<%@page import="br.com.fatec.jdbc.DAO.DisciplinaDAO" %>

<%
    DisciplinaDAO dao = new DisciplinaDAO();
    List<Disciplina> disciplinas = dao.lista();
%>

<html>
    <head>
        <title>HOME</title>
        <%@include file="head.html"%>
    </head>

    <body>
        <%@include file="navbar.html"%>

        <div class="container-fluid">
            <div class="row-fluid">
                <%@include file="sidebar.html"%>
                <div class="span9">
                    <!-- Aqui deve ficar o conteúdo do Container -->

                    <h1>Listar Disciplina</h1>    
                    <table class="table">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>NOME</th>
                                <th>#</th>
                                <th>#</th>
                            </tr>
                        </thead>
                        <% for (Disciplina disciplina : disciplinas) {%>

                        <tbody>
                            <tr>
                                <td><%=disciplina.getId_Disciplina()%></td>
                                <td><%=disciplina.getNome()%></td>
                                <td><a href="alteraDisciplina.jsp?COD=<%=disciplina.getId_Disciplina()%>"><i class="icon-pencil"></i></a></td>
                                <td><a href="excluiDisciplina.jsp?COD=<%=disciplina.getId_Disciplina()%>"><i class="icon-trash"></i></a></td>
                            </tr>
                            <% }%>
                    </table>
                </div><!--/span-->
            </div><!--/row-->
        </div>
    </body>
</html>
