<!DOCTYPE html>

<html>
    <head>
        <title>Inserir Disciplina</title>
        <%@include file="head.html"%>
    </head>

    <body>
        <%@include file="navbar.html"%>

        <div class="container-fluid">
            <div class="row-fluid">
                <%@include file="sidebar.html"%>
                <div class="span9">
                    <h1>Inserir Disciplina</h1>
                    <table>
                    <form name="insereDisciplina" action="validaInsereDisciplina.jsp" method="POST">
                        NOME: <input type="text" name="nome" value="" placeholder="Ferramentas Web">  <br>
                        <input type="submit" name="Enviar" value="Enviar">  <br>
                    </form>
                    </table>
                </div><!--/span-->
            </div><!--/row-->
        </div>
    </body>
</html>