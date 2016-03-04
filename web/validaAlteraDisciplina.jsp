<!DOCTYPE html>
<%@page import="br.com.fatec.jdbc.modelo.Disciplina" %>
<%@page import="br.com.fatec.jdbc.DAO.DisciplinaDAO" %>

<%
    String id = request.getParameter("id");
    String nome = request.getParameter("nome");
    int cod = Integer.parseInt(id);
    Disciplina d1 = new Disciplina();
    d1.setId_Disciplina(cod);
    d1.setNome(nome);
    DisciplinaDAO dao = new DisciplinaDAO();
    dao.altera(d1);
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
                            <td><h3>NOME:</h3></td>
                            <td><h3><%=nome%></h3></td>
                        </tr>

                        <script type="text/JavaScript">
                            setTimeout("location.href = 'listaDisciplina.jsp';",3000);
                        </script>
                    </table>
                </div><!--/span-->
            </div><!--/row-->
        </div>
    </body>
</html>