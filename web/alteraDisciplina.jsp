<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="br.com.fatec.jdbc.modelo.Disciplina" %>
<%@page import="br.com.fatec.jdbc.DAO.DisciplinaDAO" %>

<%
    String id = request.getParameter("COD");
    Disciplina d1 = new Disciplina();
    d1.setId_Disciplina(Integer.parseInt(id));
    DisciplinaDAO dao = new DisciplinaDAO();
    d1 = dao.busca(d1) ;
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
                    <table>
                        <form name="alteraDisciplina" action="validaAlteraDisciplina.jsp" method="POST">
                            <tr>
                                <td>NOME:</td>
                                <td><input type="text" name="nome" value="<%=d1.getNome()%>"></td>
                            </tr>

                            <input type="hidden" name="id" value="<%=d1.getId_Disciplina()%>">  <br>

                            <tr>
                                <td colspan="2"><input type="submit" name="Enviar" value="Enviar"></td>
                            </tr>
                        </form>
                    </table>
                </div><!--/span-->
            </div><!--/row-->
        </div>
    </body>
</html>