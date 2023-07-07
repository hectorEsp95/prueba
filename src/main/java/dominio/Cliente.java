package dominio;

public class Cliente {
    
    private int idCliente;
    private String nombre;
    private String apellido;
    private String edad;
    private String cumpleaños;
    private String email;
    private String telefono;
    private String telefonoApoyo;
    private String enfermedades;
    private double saldo;
    private String grupo;

    //Constructores.
    public Cliente() {
    }

    public Cliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public Cliente(String nombre, String apellido, String edad, String cumpleaños, String email, String telefono, String telefonoApoyo, String enfermedades, double saldo, String grupo) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.edad = edad;
        this.cumpleaños = cumpleaños;
        this.email = email;
        this.telefono = telefono;
        this.telefonoApoyo = telefonoApoyo;
        this.enfermedades = enfermedades;
        this.saldo = saldo;
        this.grupo = grupo;
    }

    public Cliente(int idCliente, String nombre, String apellido, String edad, String cumpleaños, String email, String telefono, String telefonoApoyo, String enfermedades, double saldo, String grupo) {
        this.idCliente = idCliente;
        this.nombre = nombre;
        this.apellido = apellido;
        this.edad = edad;
        this.cumpleaños = cumpleaños;
        this.email = email;
        this.telefono = telefono;
        this.telefonoApoyo = telefonoApoyo;
        this.enfermedades = enfermedades;
        this.saldo = saldo;
        this.grupo = grupo;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getEdad() {
        return edad;
    }

    public void setEdad(String edad) {
        this.edad = edad;
    }

    public String getCumpleaños() {
        return cumpleaños;
    }

    public void setCumpleaños(String cumpleaños) {
        this.cumpleaños = cumpleaños;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getTelefonoApoyo() {
        return telefonoApoyo;
    }

    public void setTelefonoApoyo(String telefonoApoyo) {
        this.telefonoApoyo = telefonoApoyo;
    }

    public String getEnfermedades() {
        return enfermedades;
    }

    public void setEnfermedades(String enfermedades) {
        this.enfermedades = enfermedades;
    }

    public double getSaldo() {
        return saldo;
    }

    public void setSaldo(double saldo) {
        this.saldo = saldo;
    }

       public void setGrupo(String grupo) {
        this.grupo = grupo;
    }

    public String getGrupo() {
        return grupo;
    }

    @Override
    public String toString() {
        return "Cliente{" + "idCliente=" + idCliente + ", nombre=" + nombre + ", apellido=" + apellido + ", edad=" + edad + ", cumplea\u00f1os=" + cumpleaños + ", email=" + email + ", telefono=" + telefono + ", telefonoApoyo=" + telefonoApoyo + ", enfermedades=" + enfermedades + ", saldo=" + saldo + ", grupo=" + grupo + '}';
    }
    

}
