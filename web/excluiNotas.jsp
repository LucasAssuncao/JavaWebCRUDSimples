<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="br.com.fatec.jdbc.modelo.Notas" %>
<%@page import="br.com.fatec.jdbc.DAO.NotasDAO" %>

<%
    String id = request.getParameter("COD");
    Notas notas1 = new Notas();
    notas1.setId_notas(Integer.parseInt(id));
    NotasDAO dao = new NotasDAO();
    dao.exclui(notas1) ;
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
                        setTimeout("location.href = 'listaNotas.jsp';",3000);
                    </script>
                </div><!--/span-->
            </div><!--/row-->
        </div>
    </body>
</html>