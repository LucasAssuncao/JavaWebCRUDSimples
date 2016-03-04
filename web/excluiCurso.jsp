<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="br.com.fatec.jdbc.modelo.Curso" %>
<%@page import="br.com.fatec.jdbc.DAO.CursoDAO" %>

<%
    String id = request.getParameter("COD");
    Curso c1 = new Curso();
    c1.setId_Curso(Integer.parseInt(id));
    CursoDAO dao = new CursoDAO();
    dao.exclui(c1) ;
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
                        setTimeout("location.href = 'listaCurso.jsp';",3000);
                    </script>
                </div><!--/span-->
            </div><!--/row-->
        </div>
    </body>
</html>