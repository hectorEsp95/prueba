<div class="modal fade" id="passwordModal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-warning text-white">
                <h5 class="modal-title">INGRESE LA CONTRASE�A:</h5>
                <button class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
            </div>
            <form class="was-validated">
                <div class="modal-body">
                    <div class="form-group">
                        <input type="hidden" id="codigo"/><br>
                        <input type="password" id="contra" class="form-control" name="contra" required> 
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-primary" data-dismiss="modal" onclick="ContraPaginaEditar()">Aceptar</button>
                </div>
            </form>
        </div>
    </div>
</div>
    
<!-- Validaciones de contrase�a y URL para poder acceder al jsp editar -->
<script>
    function ContraPaginaEditar() {
        window.close();
        obtenerURL = document.getElementById("codigo").value;
        obtenerContrase�a = document.getElementById("contra").value;
        if (obtenerContrase�a == 1995) {
            window.open(obtenerURL, '_self');
        } else {
            alert("Contrase�a incorrecta");
        }
        document.getElementById("contra").value = "";
    } 
</script>



