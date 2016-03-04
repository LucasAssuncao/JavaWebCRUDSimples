<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="br.com.fatec.jdbc.modelo.Aluno" %>
<%@page import="br.com.fatec.jdbc.DAO.AlunoDAO" %>

<%
    AlunoDAO dao = new AlunoDAO();
    List<Aluno> alunos = dao.lista();
%>

<html>
    <head>
        <title>Listar Aluno</title>
        <%@include file="head.html"%>
    </head>

    <body>
        <%@include file="navbar.html"%>

        <div class="container-fluid">
            <div class="row-fluid">
                <%@include file="sidebar.html"%>
                <div class="span9">
                    <!-- Aqui deve ficar o conteúdo do Container -->

                    <h1>Listar Aluno</h1>    
                    <table class="table">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>RA</th>
                                <th>NOME</th>
                                <th>#</th>
                                <th>#</th>
                            </tr>
                        </thead>
                        <% for (Aluno aluno : alunos) {%>

                        <tbody>
                            <tr>
                                <td><%=aluno.getId_Aluno()%></td>
                                <td><%=aluno.getRa_Aluno()%></td>
                                <td><%=aluno.getNome()%></td>
                                <td><a href="alteraAluno.jsp?COD=<%=aluno.getId_Aluno()%>"><i class="icon-pencil"></i></a></td>
                                <td><a href="excluiAluno.jsp?COD=<%=aluno.getId_Aluno()%>"><i class="icon-trash"></i></a></td>
                            </tr>
                            <% }%>
                    </table>


                </div><!--/span-->
            </div><!--/row-->
        </div>
    </body>
</html>