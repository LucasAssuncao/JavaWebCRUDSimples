<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.jdbc.modelo.Professor" %>
<%@page import="br.com.fatec.jdbc.DAO.ProfessorDAO" %>

<%
    String rg = request.getParameter("rg");
    String nome = request.getParameter("nome");
    Professor p1 = new Professor();
    p1.setRg_Professor(rg);
    p1.setNome(nome);
    ProfessorDAO dao = new ProfessorDAO();
    dao.insere(p1);
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
                            <td><h3>RG:</h3></td>
                            <td><h3><%=rg%></h3></td>
                        </tr>

                        <tr>
                            <td><h3>NOME:</h3></td>
                            <td><h3><%=nome%></h3></td>
                        </tr>

                        <script type="text/JavaScript">
                            setTimeout("location.href = 'listaProfessor.jsp';",3000);
                        </script>
                    </table>
                </div><!--/span-->
            </div><!--/row-->
        </div>
    </body>
</html>