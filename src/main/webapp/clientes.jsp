<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/f90d3bf50d.js" crossorigin="anonymous"></script>        
        <link href="css/estilos.css" rel="stylesheet"/>
        <title>MJVC</title>
    </head>
    <nav>
        <!--Carrusel-->
        <jsp:include page="/WEB-INF/paginas/comunes/cabecero.jsp"/> 
        <div id="car"> 
            <!--Carrusel-->
            <jsp:include page="/WEB-INF/paginas/comunes/carrusel.jsp"/>
        </div>
    </nav>
    <body class="fondo"> 
        <!--Reloj contador -->
        <jsp:include page="/WEB-INF/paginas/reloj/reloj.jsp"/>   
        <!--Listado Clientes -->
        <jsp:include page="/WEB-INF/paginas/comunes/bloques.jsp"/>

        <div id="qui">        
            <!--Información del grupo-->
            <jsp:include page="/WEB-INF/paginas/comunes/QuienesSomos.jsp"/>        
            <!--Fotos-->
            <jsp:include page="/WEB-INF/paginas/comunes/NuestrosMomentos.jsp"/>
        </div>
        <div id="lis"> 
            <!--Listado Clientes-->
            <jsp:include page="/WEB-INF/paginas/cliente/listadoClientes.jsp"/>
        </div>
        <div id="req">         
            <!--Requisitos-->
            <jsp:include page="/WEB-INF/paginas/comunes/requisitos.jsp"/>
        </div>
        <div id="ubi">    
            <!--mapa-->
            <jsp:include page="/WEB-INF/paginas/comunes/ubicacion.jsp"/>
        </div>
        <div id="pie"> 
            <!--Pie de Pagina-->
            <jsp:include page="/WEB-INF/paginas/comunes/piePagina.jsp"/>
        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    </body>
</html>

