package Doc;

import config.Conexion;
import Doc.Zapatos;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Pc Miguel Gómez
 */
public class ZapatosDB {
    
    private static final String listado = "SELECT zapatos.idZapato, marcas.Marca, zapatos.Modelo, zapatos.Color, zapatos.Precio, zapatos.Tipo FROM marcas JOIN zapatos ON marcas.idMarca=zapatos.idMarca ORDER BY(zapatos.idZapato) ASC";
    private static final String agregarRegistro="INSERT INTO zapatos SET idMarca=?, Color=?, Modelo=?, Precio=?, Tipo=?";
    private static final String editaRegistro = "UPDATE zapatos SET idMarca=?, Color=?, Modelo=?, Precio=?, Tipo=? WHERE idZapato=?";
    private static final String consultaRegistro = "SELECT * FROM zapatos WHERE idZapato=?";
    private static final String eliminaRegistro = "DELETE FROM zapatos WHERE idZapato=?";
    
    private Connection conexion = new Conexion().getConexion();
    private PreparedStatement stmt;
    private ResultSet rs;
    
     public List<Zapatos> ListadoZapatos() throws SQLException {
         List<Zapatos> zapatos = new ArrayList<>();
         this.stmt = this.conexion.prepareStatement(listado);
         this.rs = this.stmt.executeQuery();
         while (this.rs.next()) {
             zapatos.add(new Zapatos(this.rs.getInt("idZapato"), this.rs.getString("Marca"),this.rs.getString("Color"), this.rs.getString("Modelo"), this.rs.getFloat("Precio"), this.rs.getString("Tipo")));
         }
         return zapatos;
     }
     
     public void agregaZapato(int idZapato, int idMarca, String color, String modelo, float precio, String tipo) throws SQLException {
        this.stmt = this.conexion.prepareStatement(this.agregarRegistro);
        this.stmt.setInt(1, idMarca);
        this.stmt.setString(2, color);
        this.stmt.setString(3, modelo);
        this.stmt.setFloat(4, precio);
        this.stmt.setString(5, tipo);
        this.stmt.executeUpdate();
    }
     
     public void editaZapato(int idMarca, String color, String modelo, float precio, String tipo, int idZapato) throws SQLException {
        this.stmt = this.conexion.prepareStatement(editaRegistro);
        this.stmt.setInt(1, idMarca);
        this.stmt.setString(2, color);
        this.stmt.setString(3, modelo);
        this.stmt.setFloat(4, precio);
        this.stmt.setString(5, tipo);
        this.stmt.setInt(6, idZapato);
        this.stmt.executeUpdate();
    }
     
    public int validaId(int id) throws SQLException {
        String numero = String.valueOf(id);
        if (numero != null) {
            this.stmt = this.conexion.prepareStatement(consultaRegistro);
            this.stmt.setInt(1, id);
            this.rs = this.stmt.executeQuery();
        }
        return id;
    }
    
    public void eliminarRegistro(int idZapato) throws SQLException {
        this.stmt = this.conexion.prepareStatement(eliminaRegistro);
        this.stmt.setInt(1, idZapato);
        this.stmt.executeUpdate();
    }
    
}
