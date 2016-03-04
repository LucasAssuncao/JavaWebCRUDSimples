<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="br.com.fatec.jdbc.modelo.Disciplina" %>
<%@page import="br.com.fatec.jdbc.DAO.DisciplinaDAO" %>

<%
    String id = request.getParameter("COD");
    Disciplina d1 = new Disciplina();
    d1.setId_Disciplina(Integer.parseInt(id));
    DisciplinaDAO dao = new DisciplinaDAO();
    dao.exclui(d1) ;
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
                        setTimeout("location.href = 'listaDisciplina.jsp';",3000);
                    </script>
                </div><!--/span-->
            </div><!--/row-->
        </div>
    </body>
</html>