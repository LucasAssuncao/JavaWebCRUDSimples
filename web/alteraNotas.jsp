<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="br.com.fatec.jdbc.modelo.Notas" %>
<%@page import="br.com.fatec.jdbc.DAO.NotasDAO" %>

<%
    String id = request.getParameter("COD");
    Notas notas1 = new Notas();
    notas1.setId_notas(Integer.parseInt(id));
    NotasDAO dao = new NotasDAO();
    notas1 = dao.busca(notas1) ;
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
                        <form name="alteraNotas" action="validaAlteraNotas.jsp" method="POST">
                            <tr>
                                <td>NOTA 1:</td>
                                <td><input type="text" name="nota1" value="<%=notas1.getNota1()%>"></td>
                            </tr>
                            <tr>
                                <td>NOTA 2:</td>
                                <td><input type="text" name="nota2" value="<%=notas1.getNota2()%>"></td>
                            </tr>
                            
                            <tr>
                                <td>TRABALHO:</td>
                                <td><input type="text" name="trabalho" value="<%=notas1.getTrabalho()%>"></td>
                            </tr>
                            <tr>
                                <td>ID ALUNO:</td>
                                <td><input type="text" name="aluno" value="<%=notas1.getId_Aluno()%>"></td>
                            </tr>
                            
                            <tr>
                                <td>ID PROFESSOR:</td>
                                <td><input type="text" name="prof" value="<%=notas1.getId_professor()%>"></td>
                            </tr>
                            <tr>
                                <td>ID DISCIPLINA:</td>
                                <td><input type="text" name="disc" value="<%=notas1.getId_disciplina()%>"></td>
                            </tr>

                            <input type="hidden" name="id" value="<%=notas1.getId_notas()%>">  <br>

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