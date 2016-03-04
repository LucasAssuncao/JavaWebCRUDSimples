<!DOCTYPE html>

<html>
    <head>
        <title>Inserir Aluno</title>
        <%@include file="head.html"%>
    </head>

    <body>
        <%@include file="navbar.html"%>

        <div class="container-fluid">
            <div class="row-fluid">
                <%@include file="sidebar.html"%>
                <div class="span9">
                    <!-- Aqui deve ficar o conteúdo do Container -->

                    <h1>Inserir Aluno</h1>
                    <table>
                    <form name="inseriContato" action="validaInsereAluno.jsp" method="POST">
                        <tr>
                            <td>RA:</td> 
                            <td><input type="text" name="ra" value="" placeholder="123456789"></td> 
                        </tr>

                        <tr>
                            <td>NOME:</td> 
                            <td><input type="text" name="nome" value="" placeholder="Fulano"></td> 
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