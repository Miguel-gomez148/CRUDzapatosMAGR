/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Doc;

/**
 *
 * @author Pc Miguel Gómez
 */
public class Marcas {
    private int idMarca;
    private String marca;

    public Marcas() {
    }

    public Marcas(int idMarca, String marca) {
        this.idMarca = idMarca;
        this.marca = marca;
    }

    public int getIdMarca() {
        return idMarca;
    }

    public void setIdMarca(int idMarca) {
        this.idMarca = idMarca;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    @Override
    public String toString() {
        return "Marcas{" + "idMarca=" + idMarca + ", marca=" + marca + '}';
    }
}
