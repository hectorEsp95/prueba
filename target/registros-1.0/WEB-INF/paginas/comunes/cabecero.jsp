<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="css/EstilosCabecero.css" rel='stylesheet'/>

<div class="menu">
    <div class="puente">
        <ul>
            <h2 style="text-align: center"><i class="fas fa-hand-holding-heart"></i> MJVC</h2>
            <li><a href="#car">La jornada</a></li>
            <li><a href="#qui">El MJVC</a></li> 
            <li><a href="#lis">Registro</a></li>
            <li><a href="#req">Requisitos</a></li>  
            <li><a href="#ubi">Dirección</a></li>
            <li><a href="#pie">Contactanos</a></li> 
            <li><a>Calendario</a>
                <ul>
                    <c:forEach var="agenda" items="${agendas}" varStatus="status" >
                        <li><a>${agenda.getEvento()}</a>
                            <ul>
                                <li><a>${agenda.getFecha()}</a></li>
                            </ul> 
                        </li>
                    </c:forEach>
                </ul> 
            </li>
        </ul>
    </div>
</div>