<div class="modal fade" id="agregarClienteModal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-warning text-white">
                <h5 class="modal-title">REGISTRATE!!</h5> 
                <button class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
            </div>

            <form action="${pageContext.request.contextPath}/ServletControlador?accion=insertar"
                  method="POST" class="was-validated">

                <div class="modal-body">
                    <div class="form-group">
                        <label for="nombre">Nombre:</label>
                        <input type="text" class="form-control" name="nombre" required>
                    </div>
                    <div class="form-group">
                        <label for="apellido">Apellidos:</label>
                        <input type="text" class="form-control" name="apellido" required>
                    </div>
                    <div class="form-group">
                        <label for="edad">Edad:</label>
                        <input type="number" class="form-control" name="edad" required min="1">
                    </div>
                    <div class="form-group">
                        <label for="cumpleaños">Cumpleaños:</label>
                        <input type="text" class="form-control" name="cumpleaños" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="email" class="form-control" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="telefono">WhatsApp:</label>
                        <input type="tel" class="form-control" name="telefono" minlength="10" maxlength="10" required>
                    </div>
                    <div class="form-group">
                        <label for="telefonoApoyo">WhatsApp de apoyo:</label>
                        <input type="tel" class="form-control" name="telefonoApoyo" minlength="10" maxlength="10" required>
                    </div>
                    <div class="form-group">
                        <label for="enfermedades">Enfermedades o alergias:</label>
                        <input type="text" class="form-control" name="enfermedades" required>
                    </div>

                </div>
                <div class="modal-footer">
                    <button class="btn btn-primary" type="submit">Guardar</button>
                </div>    
            </form>
        </div>
    </div>
</div>