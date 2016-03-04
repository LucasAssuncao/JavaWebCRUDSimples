<!DOCTYPE html>
<%@page import="br.com.fatec.jdbc.modelo.Curso" %>
<%@page import="br.com.fatec.jdbc.DAO.CursoDAO" %>

<%
    String id = request.getParameter("id");
    String nome = request.getParameter("nome");
    int cod = Integer.parseInt(id);
    Curso c1 = new Curso();
    c1.setId_Curso(cod);
    c1.setNome(nome);
    CursoDAO dao = new CursoDAO();
    dao.altera(c1);
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
                            setTimeout("location.href = 'listaCurso.jsp';",3000);
                        </script>
                    </table>
                </div><!--/span-->
            </div><!--/row-->
        </div>
    </body>
</html>