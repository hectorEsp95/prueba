package datos;

import dominio.Cliente;
import java.sql.*;
import java.util.*;

public class ClienteDaoJDBC {

    //Sentencias SQL para realizar consultas a la base de datos.
    private static final String SQL_SELECT = "SELECT id_cliente, nombre, apellido, edad, cumpleaños, email, telefono, telefonoApoyo, enfermedades, saldo, grupo "
            + "FROM cliente WHERE grupo = 'mjvc' GROUP BY nombre, apellido, telefono ORDER BY nombre";

    private static final String SQL_SELECT_BY_SALDO = "SELECT id_cliente, nombre, apellido, edad, cumpleaños, email, telefono, telefonoApoyo, enfermedades, saldo, grupo "
            + "FROM cliente  WHERE saldo != 0 AND grupo = 'mjvc' GROUP BY nombre, apellido, telefono ORDER BY nombre";

    private static final String SQL_SELECT_BY_ID = "SELECT nombre, apellido, edad, cumpleaños, email, telefono, telefonoApoyo, enfermedades, saldo, grupo "
            + " FROM cliente WHERE id_cliente = ?";

    private static final String SQL_INSERT = "INSERT INTO cliente(nombre, apellido, edad, cumpleaños, email, telefono, telefonoApoyo, enfermedades, saldo, grupo) "
            + " VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

    private static final String SQL_UPDATE = "UPDATE cliente "
            + " SET nombre=?, apellido=?, edad=?, cumpleaños=?, email=?, telefono=?, telefonoApoyo=?, enfermedades=?, saldo=?, grupo=? WHERE id_cliente=?";

    private static final String SQL_DELETE = "DELETE FROM cliente WHERE id_cliente = ?";

    //Metodo para mostrar todos los registros.
    public List<Cliente> listar() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Cliente cliente = null;
        List<Cliente> clientes = new ArrayList<>();
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_SELECT);
            rs = stmt.executeQuery();
            while (rs.next()) {
                int idCliente = rs.getInt("id_cliente");
                String nombre = rs.getString("nombre");
                String apellido = rs.getString("apellido");
                String edad = rs.getString("edad");
                String cumpleaños = rs.getString("cumpleaños");
                String email = rs.getString("email");
                String telefono = rs.getString("telefono");
                String telefonoApoyo = rs.getString("telefonoApoyo");
                String enfermedades = rs.getString("enfermedades");
                double saldo = rs.getDouble("saldo");
                String grupo = rs.getString("grupo");

                cliente = new Cliente(idCliente, nombre, apellido, edad, cumpleaños, email, telefono, telefonoApoyo, enfermedades, saldo, grupo);
                clientes.add(cliente);
            }
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return clientes;
    }

    //Metodo para mostrar todos los registros.
    public List<Cliente> ListarSaldo() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Cliente cliente = null;
        List<Cliente> clientes = new ArrayList<>();
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_SELECT_BY_SALDO);
            rs = stmt.executeQuery();
            while (rs.next()) {
                int idCliente = rs.getInt("id_cliente");
                String nombre = rs.getString("nombre");
                String apellido = rs.getString("apellido");
                String edad = rs.getString("edad");
                String cumpleaños = rs.getString("cumpleaños");
                String email = rs.getString("email");
                String telefono = rs.getString("telefono");
                String telefonoApoyo = rs.getString("telefonoApoyo");
                String enfermedades = rs.getString("enfermedades");
                double saldo = rs.getDouble("saldo");
                String grupo = rs.getString("grupo");

                cliente = new Cliente(idCliente, nombre, apellido, edad, cumpleaños, email, telefono, telefonoApoyo, enfermedades, saldo, grupo);
                clientes.add(cliente);
            }
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return clientes;
    }

    //Metodo para buscar por el ID a una persona.
    public Cliente encontrar(Cliente cliente) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_SELECT_BY_ID);
            stmt.setInt(1, cliente.getIdCliente());
            rs = stmt.executeQuery();

            while (rs.next()) {
                String nombre = rs.getString("nombre");
                String apellido = rs.getString("apellido");
                String edad = rs.getString("edad");
                String cumpleaños = rs.getString("cumpleaños");
                String email = rs.getString("email");
                String telefono = rs.getString("telefono");
                String telefonoApoyo = rs.getString("telefonoApoyo");
                String enfermedades = rs.getString("enfermedades");
                double saldo = rs.getDouble("saldo");
                String grupo = rs.getString("grupo");

                cliente.setNombre(nombre);
                cliente.setApellido(apellido);
                cliente.setEdad(edad);
                cliente.setCumpleaños(cumpleaños);
                cliente.setEmail(email);
                cliente.setTelefono(telefono);
                cliente.setTelefonoApoyo(telefonoApoyo);
                cliente.setEnfermedades(enfermedades);
                cliente.setSaldo(saldo);
                cliente.setGrupo(grupo);
            }

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return cliente;
    }

    //Metodo para insertar un nuevo registro.
    public int insertar(Cliente cliente) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int rows = 0;
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_INSERT);
            stmt.setString(1, cliente.getNombre());
            stmt.setString(2, cliente.getApellido());
            stmt.setString(3, cliente.getEdad());
            stmt.setString(4, cliente.getCumpleaños());
            stmt.setString(5, cliente.getEmail());
            stmt.setString(6, cliente.getTelefono());
            stmt.setString(7, cliente.getTelefonoApoyo());
            stmt.setString(8, cliente.getEnfermedades());
            stmt.setDouble(9, cliente.getSaldo());
            stmt.setString(10, cliente.getGrupo());
            rows = stmt.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return rows;
    }

    //Metodo para hacer cambios en un registro.
    public int actualizar(Cliente cliente) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int rows = 0;
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_UPDATE);
            stmt.setString(1, cliente.getNombre());
            stmt.setString(2, cliente.getApellido());
            stmt.setString(3, cliente.getEdad());
            stmt.setString(4, cliente.getCumpleaños());
            stmt.setString(5, cliente.getEmail());
            stmt.setString(6, cliente.getTelefono());
            stmt.setString(7, cliente.getTelefonoApoyo());
            stmt.setString(8, cliente.getEnfermedades());
            stmt.setDouble(9, cliente.getSaldo());
            stmt.setString(10, cliente.getGrupo());
            stmt.setInt(11, cliente.getIdCliente());

            rows = stmt.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return rows;
    }

    //Metodo para eliminar un registro.
    public int eliminar(Cliente cliente) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int rows = 0;
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_DELETE);
            stmt.setInt(1, cliente.getIdCliente());

            rows = stmt.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return rows;
    }

}
