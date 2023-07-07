package dominio;

public class Agenda {
    private String evento;
    private String fecha;

    public Agenda() {
    }

    public Agenda(String evento, String fecha) {
        this.evento = evento;
        this.fecha = fecha;
    }

    public String getEvento() {
        return evento;
    }

    public void setEvento(String evento) {
        this.evento = evento;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    @Override
    public String toString() {
        return "Agenda{" + "evento=" + evento + ", fecha=" + fecha + '}';
    }
    
}
