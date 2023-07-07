<link href="css/estilos.css" rel='stylesheet'/>

<section id="actions" class="py-4 mb-4 bg-light fondo">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <button type="submit" class="btn btn-success btn-block">
                    <i class="fas fa-check"></i> Guardar persona
                </button>
            </div>
            <div class="col-md-3">
                <a href="${pageContext.request.contextPath}/ServletControlador?accion=eliminar&idCliente=${cliente.idCliente}"
                   class="btn btn-danger btn-block">
                    <i class="fas fa-trash"></i> Eliminar persona
                </a>
            </div>
            <div class="col-md-3">
                <a href="${pageContext.request.contextPath}/ServletControlador?accion=listarPorSaldo&valor=1"
                   class="btn btn-info btn-block">
                    <i class="fas fa-users"></i> Reporte de Excel
                </a>
            </div>
            <div class="col-md-3">
                <a href="${pageContext.request.contextPath}/ServletControlador?accion=listarPorSaldo&valor=2"
                   class="btn btn-info btn-block">
                    <i class="fas fa-print"></i> Enviar publicidad
                </a>
            </div>
        </div>
    </div>
</section>