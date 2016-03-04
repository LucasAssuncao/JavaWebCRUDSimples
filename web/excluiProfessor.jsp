<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="br.com.fatec.jdbc.modelo.Professor" %>
<%@page import="br.com.fatec.jdbc.DAO.ProfessorDAO" %>

<%
    String id = request.getParameter("COD");
    Professor p1 = new Professor();
    p1.setId_Professor(Integer.parseInt(id));
    ProfessorDAO dao = new ProfessorDAO();
    dao.exclui(p1) ;
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
                        setTimeout("location.href = 'listaProfessor.jsp';",3000);
                    </script>
                </div><!--/span-->
            </div><!--/row-->
        </div>
    </body>
</html>