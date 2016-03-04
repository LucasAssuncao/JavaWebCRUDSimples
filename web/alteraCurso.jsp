<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="br.com.fatec.jdbc.modelo.Curso" %>
<%@page import="br.com.fatec.jdbc.DAO.CursoDAO" %>

<%
    String id = request.getParameter("COD");
    Curso c1 = new Curso();
    c1.setId_Curso(Integer.parseInt(id));
    CursoDAO dao = new CursoDAO();
    c1 = dao.busca(c1) ;
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
                        <form name="alteraCurso" action="validaAlteraCurso.jsp" method="POST">
                            <tr>
                                <td>NOME:</td>
                                <td><input type="text" name="nome" value="<%=c1.getNome()%>"></td>
                            </tr>

                            <input type="hidden" name="id" value="<%=c1.getId_Curso()%>">  <br>

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