<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<section style="padding-top: 120px">
    <div class="container">
        <div class="row"> 
            <div class="col-lg-12">
                <div class="card">
                    <table>
                        <div class="bg-white">
                            <tr class="card-body">
                                <th>
                                    <h3>Listado de Personas</h3> 
                                </th>
                                <th>
                                    <jsp:include page="/WEB-INF/paginas/comunes/botonesNavegacion.jsp"/>
                                </th>
                            </tr>
                        </div>
                    </table>

                    <table class="table table-striped">
                        <thead class="thead-dark">
                            <tr>
                                <th style="text-align: center">#</th>
                                <th>Nombre</th>
                                <th style="text-align: center">Edad</th>
                                <th>Fecha de nacimiento</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Iteramos cada elemento de la lista de clientes -->
                            <c:forEach var="cliente" items="${clientes}" varStatus="status" >
                                <tr>
                                    <td style="text-align: center"><c:if test="${cliente.saldo==PrecioEvento}">  
                                            <i class="fas fa-check" style="color: green"> Pagado</i>
                                        </c:if> 
                                        <c:if test="${cliente.saldo!=PrecioEvento}">  
                                            <i class="fas fa-info" style="color: red"> Faltante</i>
                                        </c:if> 
                                        <a href="#" class="btn btn-secondary btn-block"
                                           data-toggle="modal" data-target="#passwordModal" onclick="ObtenerID(${cliente.idCliente})">
                                            <i class="fas fa-angle-double-right"></i> Editar
                                        </a>    
                                    </td>                                           
                                    <td style="vertical-align: middle">${cliente.nombre} ${cliente.apellido}</td>
                                    <td style="text-align: center; vertical-align: middle;">${cliente.edad}</td>
                                    <td style="vertical-align: middle">${cliente.cumpleaños}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>                               
                                
<!-- Envia la ruta del jsp editar al formulario modal -->
<script>
    function ObtenerID(numero)
    {
        var valor = "${pageContext.request.contextPath}/ServletControlador?accion=editar&idCliente=" + numero;
        document.getElementById("codigo").value = valor;
    }
</script>

<!-- Agregar cliente en formulario MODAL (pagina emergente)-->
<jsp:include page="/WEB-INF/paginas/cliente/agregarCliente.jsp"/>
<jsp:include page="/WEB-INF/paginas/cliente/password.jsp"/>


