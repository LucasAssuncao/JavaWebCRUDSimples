<!DOCTYPE html>

<html>
    <head>
        <title>Inserir Notas</title>
        <%@include file="head.html"%>
    </head>

    <body>
        <%@include file="navbar.html"%>

        <div class="container-fluid">
            <div class="row-fluid">
                <%@include file="sidebar.html"%>
                <div class="span9">
                    <!-- Aqui deve ficar o conteúdo do Container -->

                    <h1>Inserir Notas</h1>

                    <table>
                        <form name="insereNotas" action="validaInsereNotas.jsp" method="POST">
                            <tr>
                                <td>NOTA 1:</td>
                                <td><input type="text" name="nota1" value="" placeholder="10"></td>
                            </tr>

                            <tr>
                                <td>NOTA 2:</td>
                                <td><input type="text" name="nota2" value="" placeholder="10"></td>
                            </tr>

                            <tr>
                                <td>TRABALHO:</td>
                                <td><input type="text" name="trabalho" value="" placeholder="10"></td>
                            </tr>

                            <tr>
                                <td>ID ALUNO:</td>
                                <td><input type="text" name="aluno" value="" placeholder="3"></td>
                            </tr>

                            <tr>
                                <td>ID PROFESSOR:</td>
                                <td><input type="text" name="prof" value="" placeholder="2"></td>
                            </tr>

                            <tr>
                                <td>ID DISCIPLINA:</td>
                                <td><input type="text" name="disc" value="" placeholder="1"></td>
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