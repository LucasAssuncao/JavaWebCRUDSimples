<!DOCTYPE html>
<%@page import="br.com.fatec.jdbc.modelo.Notas" %>
<%@page import="br.com.fatec.jdbc.DAO.NotasDAO" %>

<%
    int nota1 = Integer.parseInt(request.getParameter("nota1"));
    int nota2 = Integer.parseInt(request.getParameter("nota2"));
    int trabalho = Integer.parseInt(request.getParameter("trabalho"));
    int aluno = Integer.parseInt(request.getParameter("aluno"));
    int professor = Integer.parseInt(request.getParameter("prof"));
    int disciplina = Integer.parseInt(request.getParameter("disc"));
    
    Notas notas1 = new Notas();
    notas1.setNota1(nota1);
    notas1.setNota2(nota2);
    notas1.setTrabalho(trabalho);
    notas1.setId_Aluno(aluno);
    notas1.setId_professor(professor);
    notas1.setId_disciplina(disciplina);
    NotasDAO dao = new NotasDAO();
    dao.insere(notas1);
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
                            <td><h3>NOTA 1:</h3></td>
                            <td><h3><%=nota1%></h3></td>
                        </tr>

                        <tr>
                            <td><h3>NOTA 2:</h3></td>
                            <td><h3><%=nota2%></h3></td>
                        </tr>

                        <tr>
                            <td><h3>TRABALHO:</h3></td>
                            <td><h3><%=trabalho%></h3></td>
                        </tr>

                        <tr>
                            <td><h3>ID ALUNO:</h3></td>
                            <td><h3><%=aluno%></h3></td>
                        </tr>
                        
                        <tr>
                            <td><h3>ID PROFESSOR:</h3></td>
                            <td><h3><%=professor%></h3></td>
                        </tr>

                        <tr>
                            <td><h3>ID DISCIPLINA:</h3></td>
                            <td><h3><%=disciplina%></h3></td>
                        </tr>
                        
                        <script type="text/JavaScript">
                            setTimeout("location.href = 'listaNotas.jsp';",3000);
                        </script>
                    </table>
                </div><!--/span-->
            </div><!--/row-->
        </div>
    </body>
</html>