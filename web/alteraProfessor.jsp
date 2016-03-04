<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="br.com.fatec.jdbc.modelo.Professor" %>
<%@page import="br.com.fatec.jdbc.DAO.ProfessorDAO" %>

<%
    String id = request.getParameter("COD");
    Professor p1 = new Professor();
    p1.setId_Professor(Integer.parseInt(id));
    ProfessorDAO dao = new ProfessorDAO();
    p1 = dao.busca(p1) ;
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
                        <form name="alteraProfessor" action="validaAlteraProfessor.jsp" method="POST">
                            <tr>
                                <td>RG:</td>
                                <td><input type="text" name="rg" value="<%=p1.getRg_Professor()%>"></td>
                            </tr>
                            <tr>
                                <td>NOME:</td>
                                <td><input type="text" name="nome" value="<%=p1.getNome()%>"></td>
                            </tr>

                            <input type="hidden" name="id" value="<%=p1.getId_Professor()%>">  <br>

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