<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="br.com.fatec.jdbc.modelo.Curso" %>
<%@page import="br.com.fatec.jdbc.DAO.CursoDAO" %>

<%
    CursoDAO dao = new CursoDAO();
    List<Curso> cursos = dao.lista() ;
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
                    
                    <h1>Listar Curso</h1>    
                    <table class="table">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>NOME</th>
                                <th>#</th>
                                <th>#</th>
                            </tr>
                        </thead>
                        <% for (Curso curso : cursos) {%>

                        <tbody>
                            <tr>
                                <td><%=curso.getId_Curso()%></td>
                                <td><%=curso.getNome()%></td>
                                <td><a href="alteraCurso.jsp?COD=<%=curso.getId_Curso()%>"><i class="icon-pencil"></i></a></td>
                                <td><a href="excluiCurso.jsp?COD=<%=curso.getId_Curso()%>"><i class="icon-trash"></i></a></td>
                            </tr>
                            <% }%>
                    </table>
                </div><!--/span-->
            </div><!--/row-->
        </div>
    </body>
</html>