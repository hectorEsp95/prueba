<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/f90d3bf50d.js" crossorigin="anonymous"></script>
        <link href="css/estilos.css" rel='stylesheet'/>

        <title>MJVC</title>
    </head>
    <body class="fondo">
        <div class="container py-4">
            <form action="${pageContext.request.contextPath}/ServletControlador?accion=modificar&idCliente=${cliente.idCliente}"
                  method="POST" class="was-validated">

                <section id="details">
                    <div class="container">
                        <div class="row">
                            <div class="col">
                                <div class="card">
                                    <div class="card-header">
                                        <h4>Editar Persona</h4>
                                    </div>
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label for="nombre">Nombre:</label>
                                            <input type="text" class="form-control" name="nombre" required value="${cliente.nombre}">
                                        </div>
                                        <div class="form-group">
                                            <label for="apellido">Apellido:</label>
                                            <input type="text" class="form-control" name="apellido" required value="${cliente.apellido}">
                                        </div>
                                        <div class="form-group">
                                            <label for="edad">Edad:</label>
                                            <input type="number" class="form-control" name="edad" required value="${cliente.edad}">
                                        </div>
                                        <div class="form-group">
                                            <label for="cumpleaños">Cumpleaños:</label>
                                            <input type="text" class="form-control" name="cumpleaños" required value="${cliente.cumpleaños}">
                                        </div>
                                        <div class="form-group">
                                            <label for="grupo">Grupo:</label>
                                            <input type="text" class="form-control" name="grupo" required value="${cliente.grupo}">
                                        </div>
                                        <div class="form-group">
                                            <label for="email">Email:</label>
                                            <input type="email" class="form-control" name="email" required value="${cliente.email}">
                                        </div>
                                        <div class="form-group">
                                            <label for="telefono">WhatsApp:</label>
                                            <input type="tel" class="form-control" name="telefono" id="whatsPersonal" required value="${cliente.telefono}">
                                        </div>
                                        <div class="form-group">
                                            <label for="telefonoApoyo">WhatsApp de apoyo:</label>
                                            <input type="tel" class="form-control" name="telefonoApoyo" id="whatsApoyo" required value="${cliente.telefonoApoyo}">
                                        </div>
                                        <div class="form-group">
                                            <label for="enfermedades">Enfermedades o alergias:</label>
                                            <input type="text" class="form-control" name="enfermedades" required value="${cliente.enfermedades}">
                                        </div>
                                        <div class="form-group">
                                            <label for="saldo">Saldo:</label>
                                            <input type="number" class="form-control" name="saldo" required value="${cliente.saldo}" step="any">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <!--Botones de Navegacion -->
                <jsp:include page="/WEB-INF/paginas/comunes/botonesNavegacionEdicion.jsp"/>
            </form>
        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
        <script>
            $(document).ready(function () {
                $("#whatsPersonal").mask("+52 1 000 000 0000");
                $("#whatsApoyo").mask("+52 1 000 000 0000");
            });
        </script>         
    </body>
</html>