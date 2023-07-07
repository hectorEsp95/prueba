<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setLocale value="es_MX"/>

<section class="py-4">
    <div class="container">
        <div class="row">
            <!--Inicio Tarjetas para los totales-->
            <div class="col-md-6">                       
                <div class="card text-center bg-success text-white mb-3">
                    <div class="card-body">
                        <h3>Personas Registradas</h3>
                        <h4 class="display-4">
                            <i class="fas fa-users"></i> ${totalClientes}
                        </h4>
                    </div>
                </div>        
            </div>
            <div class="col-md-6">
                <div class="card text-center bg-danger text-white mb-3">
                    <div class="card-body">
                        <h3>Costo Total</h3>
                        <h4 class="display-4">
                            <fmt:formatNumber value="${PrecioEvento}" type="currency"/>
                        </h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>



