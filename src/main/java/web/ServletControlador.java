package web;

import datos.AgendaDaoJDBC;
import datos.ClienteDaoJDBC;
import dominio.Agenda;
import dominio.Cliente;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/ServletControlador")
public class ServletControlador extends HttpServlet {

    int precio = 400;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        if (accion != null) {
            switch (accion) {
                case "editar":
                    this.editarCliente(request, response);
                    break;
                case "eliminar":
                    this.eliminarCliente(request, response);
                    break;
                case "listarPorSaldo":
                    this.listarPorSaldoCliente(request, response);
                    break;
                default:
                    this.accionDefault(request, response);
            }
        } else {
            this.accionDefault(request, response);
        }
    }

    //Metodo que obtiene todos los registros de la base de datos para mostrarlos en la pagina index.
    private void accionDefault(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Cliente> clientes = new ClienteDaoJDBC().listar();
        List<Agenda> agendas = new AgendaDaoJDBC().calendario();
        HttpSession sesion = request.getSession();
        sesion.setAttribute("clientes", clientes);  //Muestra todos los clientes.
        sesion.setAttribute("totalClientes", clientes.size());  //Muestra el tamaño del arreglo.
        sesion.setAttribute("PrecioEvento", precio);  //Muestra el precio del evento.          
        sesion.setAttribute("agendas", agendas);  //Muestra toda la agenda.   
        response.sendRedirect("clientes.jsp");
    }

    //Metodo que hace una busqueda por id y llama a la clase editarCliente cuando se presiona el boton editar.
    private void editarCliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //recuperamos el idCliente
        int idCliente = Integer.parseInt(request.getParameter("idCliente"));
        Cliente cliente = new ClienteDaoJDBC().encontrar(new Cliente(idCliente));
        request.setAttribute("cliente", cliente);
        String jspEditar = "/WEB-INF/paginas/cliente/editarCliente.jsp";
        request.getRequestDispatcher(jspEditar).forward(request, response);
    }

    //Metodo para eliminar un cliente con el boton eliminar dentro del formulario del boton editar.
    private void eliminarCliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //recuperamos los valores del formulario editarCliente
        int idCliente = Integer.parseInt(request.getParameter("idCliente"));
        //Creamos el objeto de cliente (modelo)
        Cliente cliente = new Cliente(idCliente);
        //Eliminamos el  objeto en la base de datos
        int registrosModificados = new ClienteDaoJDBC().eliminar(cliente);
        //Redirigimos hacia accion por default
        this.accionDefault(request, response);
    }

    //Metodo que obtiene todos los clientes que ya han pagado.
    private void listarPorSaldoCliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Cliente> clientes = null;
        int valor = Integer.parseInt(request.getParameter("valor"));
        if (valor == 1) {
            clientes = new ClienteDaoJDBC().listar();
        } else if (valor == 2) {
            clientes = new ClienteDaoJDBC().ListarSaldo();
        }
        HttpSession sesion = request.getSession();
        sesion.setAttribute("envioAexcel", clientes);  //Muestra todos los clientes.
        response.sendRedirect("reporteExcel.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        if (accion != null) {
            switch (accion) {
                case "insertar":
                    this.insertarCliente(request, response);
                    break;
                case "modificar":
                    this.modificarCliente(request, response);
                    break;
                default:
                    this.accionDefault(request, response);
            }
        } else {
            this.accionDefault(request, response);
        }
    }

    //Metodo para insertar un nuevo registro a la base de datos con los datos del formulario emergente.
    private void insertarCliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //recuperamos los valores del formulario agregarCliente
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String edad = request.getParameter("edad");
        String cumpleaños = request.getParameter("cumpleaños");
        String email = request.getParameter("email");
        String tel = request.getParameter("telefono");
        char[] cart = tel.toCharArray();
        String telefono = "+52 1 " + cart[0] + cart[1] + cart[2] + " " + cart[3] + cart[4] + cart[5] + " " + cart[6] + cart[7] + cart[8] + cart[9];
        tel = request.getParameter("telefonoApoyo");
        cart = tel.toCharArray();
        String telefonoApoyo = "+52 1 " + cart[0] + cart[1] + cart[2] + " " + cart[3] + cart[4] + cart[5] + " " + cart[6] + cart[7] + cart[8] + cart[9];
        String enfermedades = request.getParameter("enfermedades");
        //Creamos el objeto de cliente (modelo).
        Cliente cliente = new Cliente(nombre, apellido, edad, cumpleaños, email, telefono, telefonoApoyo, enfermedades, 0, "mjvc");
        //Insertamos el nuevo objeto en la base de datos.
        int registrosModificados = new ClienteDaoJDBC().insertar(cliente);
        //Redirigimos hacia la accion por default del metodo doGet.
        this.accionDefault(request, response);
    }

    //Metodo para modificar un registro de la base de datos con el boton guardar dentro del formulario del boton editar.
    private void modificarCliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //recuperamos los valores del formulario editarCliente
        int idCliente = Integer.parseInt(request.getParameter("idCliente"));
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String edad = request.getParameter("edad");
        String cumpleaños = request.getParameter("cumpleaños");
        String email = request.getParameter("email");
        String telefono = request.getParameter("telefono");
        String telefonoApoyo = request.getParameter("telefonoApoyo");
        String enfermedades = request.getParameter("enfermedades");
        double saldo = 0;
        String saldoString = request.getParameter("saldo");
        if (saldoString != null && !"".equals(saldoString)) {
            saldo = Double.parseDouble(saldoString);
        }
        String grupo = request.getParameter("grupo");
        //Creamos el objeto de cliente (modelo)
        Cliente cliente = new Cliente(idCliente, nombre, apellido, edad, cumpleaños, email, telefono, telefonoApoyo, enfermedades, saldo, grupo);
        //Modificar el  objeto en la base de datos
        int registrosModificados = new ClienteDaoJDBC().actualizar(cliente);
        //Redirigimos hacia accion por default
        this.accionDefault(request, response);
    }
}
