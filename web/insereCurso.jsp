<!DOCTYPE html>

<html>
    <head>
        <title>Inserir Curso</title>
        <%@include file="head.html"%>
    </head>

    <body>
        <%@include file="navbar.html"%>

        <div class="container-fluid">
            <div class="row-fluid">
                <%@include file="sidebar.html"%>
                <div class="span9">
                    <!-- Aqui deve ficar o conteúdo do Container -->

                    <h1>Inserir Curso</h1>
                    <table>
                        <form name="insereCurso" action="validaInsereCurso.jsp" method="POST">
                            <tr>
                                <td>NOME:</td>
                                <td><input type="text" name="nome" value="" placeholder="ADS"></td>
                            </tr>

                            <tr>
                                <td><input type="submit" name="Enviar" value="Enviar"></td>
                            </tr>
                        </form>
                    </table>
                </div><!--/span-->
            </div><!--/row-->
        </div>
    </body>
</html>
