package datos;

import dominio.Agenda;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AgendaDaoJDBC {

    //Sentencias SQL para realizar consultas a la base de datos.
    private static final String SQL_SELECT_CALENDARIO = "SELECT evento, fecha From agenda ORDER BY fecha";

    //Metodo para mostrar todos los registros.
    public List<Agenda> calendario() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Agenda agenda = null;
        List<Agenda> agendas = new ArrayList<>();
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_SELECT_CALENDARIO);
            rs = stmt.executeQuery();
            while (rs.next()) {
                String evento = rs.getString("evento");
                String fecha = rs.getString("fecha");

                agenda = new Agenda(evento, fecha);
                agendas.add(agenda);
            }
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return agendas;
    }

}
