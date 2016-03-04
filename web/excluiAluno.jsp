<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="br.com.fatec.jdbc.modelo.Aluno" %>
<%@page import="br.com.fatec.jdbc.DAO.AlunoDAO" %>

<%
    String id = request.getParameter("COD");
    Aluno a1 = new Aluno();
    a1.setId_Aluno(Integer.parseInt(id));
    AlunoDAO dao = new AlunoDAO();
    dao.exclui(a1) ;
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
                    
                    <h1>Excluido com sucesso</h1>
                    
                    <script type="text/JavaScript">
                        setTimeout("location.href = 'listaAluno.jsp';",3000);
                    </script>
                </div><!--/span-->
            </div><!--/row-->
        </div>
    </body>
</html>