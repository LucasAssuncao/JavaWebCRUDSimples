<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="br.com.fatec.jdbc.modelo.Aluno" %>
<%@page import="br.com.fatec.jdbc.DAO.AlunoDAO" %>

<%
    String id = request.getParameter("COD");
    Aluno a1 = new Aluno();
    a1.setId_Aluno(Integer.parseInt(id));
    AlunoDAO dao = new AlunoDAO();
    a1 = dao.busca(a1);
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
                        <form name="alteraAluno" action="validaAlteraAluno.jsp" method="POST">
                            <tr>
                                <td>RA:</td>
                                <td><input type="text" name="ra" value="<%=a1.getRa_Aluno()%>"></td>
                            </tr>
                            <tr>
                                <td>NOME:</td>
                                <td><input type="text" name="nome" value="<%=a1.getNome()%>"></td>
                            </tr>

                            <input type="hidden" name="id" value="<%=a1.getId_Aluno()%>">  <br>

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