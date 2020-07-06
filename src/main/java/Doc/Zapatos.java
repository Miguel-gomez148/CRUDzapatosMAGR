package Doc;

/**
 *
 * @author Pc Miguel Gómez
 */
public class Zapatos {
    private int idZapato;
    private String color;
    private String modelo;
    private float precio;
    private String tipo;
    private String marca;
    private int idMarca;

    public Zapatos() {
    }

    public Zapatos(int idZapato, String marca, String color, String modelo, float precio, String tipo) {
        this.idZapato = idZapato;
        this.marca = marca;
        this.color = color;
        this.modelo = modelo;
        this.precio = precio;
        this.tipo = tipo;
    }

    public Zapatos(int idZapato, int idMarca, String color, String modelo, float precio, String tipo) {
        this.idZapato = idZapato;
        this.idMarca = idMarca;
        this.color = color;
        this.modelo = modelo;
        this.precio = precio;
        this.tipo = tipo;
    }

    public int getIdZapato() {
        return idZapato;
    }

    public void setIdZapato(int idZapato) {
        this.idZapato = idZapato;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public int getIdMarca() {
        return idMarca;
    }

    public void setIdMarca(int idMarca) {
        this.idMarca = idMarca;
    }

    @Override
    public String toString() {
        return "Zapatos{" + "idZapato=" + idZapato + ", color=" + color + ", modelo=" + modelo + ", precio=" + precio + ", tipo=" + tipo + '}';
    }
}
