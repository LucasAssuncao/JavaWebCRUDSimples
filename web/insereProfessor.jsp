<!DOCTYPE html>

<html>
    <head>
        <title>Inserir Professor</title>
        <%@include file="head.html"%>
    </head>

    <body>
        <%@include file="navbar.html"%>

        <div class="container-fluid">
            <div class="row-fluid">
                <%@include file="sidebar.html"%>
                <div class="span9">
                    <!-- Aqui deve ficar o conteúdo do Container -->

                    <h1>Inserir Professor</h1>
                    <table>
                        <form name="insereProfessor" action="validaInsereProfessor.jsp" method="POST">
                            <tr>
                                <td>RG:</td> 
                                <td><input type="text" name="rg" value="" placeholder="123456789"></td>
                            </tr>
                            <tr>
                                <td>NOME:</td> 
                                <td><input type="text" name="nome" value="" placeholder="Alexandre"></td>
                            </tr>
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