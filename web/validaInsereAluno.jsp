<!DOCTYPE html>
<%@page import="br.com.fatec.jdbc.modelo.Aluno" %>
<%@page import="br.com.fatec.jdbc.DAO.AlunoDAO" %>

<%
    String ra = request.getParameter("ra");
    String nome = request.getParameter("nome");
    Aluno a1 = new Aluno();
    a1.setRa_Aluno(ra);
    a1.setNome(nome);
    AlunoDAO dao = new AlunoDAO();
    dao.insere(a1);
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

                    <h1>Dados Inseridos com Sucesso</h1>

                    <table>
                        <tr>
                            <td><h3>RA:</h3></td>
                            <td><h3><%=ra%></h3></td>
                        </tr>

                        <tr>
                            <td><h3>NOME:</h3></td>
                            <td><h3><%=nome%></h3></td>
                        </tr>

                        <script type="text/JavaScript">
                            setTimeout("location.href = 'listaAluno.jsp';",3000);
                        </script>
                    </table>
                </div><!--/span-->
            </div><!--/row-->
        </div>
    </body>
</html>