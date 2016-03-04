<!DOCTYPE html>
<%@page import="br.com.fatec.jdbc.modelo.Professor" %>
<%@page import="br.com.fatec.jdbc.DAO.ProfessorDAO" %>

<%
    String id = request.getParameter("id");
    String rg = request.getParameter("rg");
    String nome = request.getParameter("nome");
    int cod = Integer.parseInt(id);
    Professor p1 = new Professor();
    p1.setId_Professor(cod);
    p1.setRg_Professor(rg);
    p1.setNome(nome);
    ProfessorDAO dao = new ProfessorDAO();
    dao.altera(p1);
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

                    <h1>Dados Alterados com Sucesso</h1>

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