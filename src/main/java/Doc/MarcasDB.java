package Doc;

import config.Conexion;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Pc Miguel Gómez
 */
public class MarcasDB {
     private static final String listado = "SELECT * FROM marcas";
     private static final String agregaMarca = "INSERT INTO marcas SET Marca=?";
     private static final String editaMarca = "UPDATE marcas SET Marca=? WHERE idMarca=?";
    private static final String consultaMarca = "SELECT * FROM marcas WHERE idMarca=?";
    private static final String eliminaMarca = "DELETE FROM marcas WHERE idMarca=?";
     
    private Connection conexion = new Conexion().getConexion();
    private PreparedStatement stmt;
    private ResultSet rs;
    
     public List<Marcas> ListadoMarcas() throws SQLException {
         List<Marcas> marcas = new ArrayList<>();
         this.stmt = this.conexion.prepareStatement(listado);
         this.rs = this.stmt.executeQuery();
         while (this.rs.next()) {
             marcas.add(new Marcas(this.rs.getInt("idMarca"), this.rs.getString("Marca")));
         }
         return marcas;
    }
     
    public void agregaMarca(String marca) throws SQLException{
        this.stmt = this.conexion.prepareStatement(agregaMarca);
        this.stmt.setString(1, marca);
        this.stmt.executeUpdate();
    }
    
     public void editaMarca(String marca, int id) throws SQLException {
        this.stmt = this.conexion.prepareStatement(editaMarca);
        this.stmt.setString(1, marca);
        this.stmt.setInt(2, id);
        this.stmt.executeUpdate();
    }
      public int validaId(int id) throws SQLException {
        String numero = String.valueOf(id);
        if (numero != null) {
            this.stmt = this.conexion.prepareStatement(consultaMarca);
            this.stmt.setInt(1, id);
            this.rs = this.stmt.executeQuery();
        }
        return id;
    }
    
    public void eliminarMarca(int idMarca) throws SQLException {
        this.stmt = this.conexion.prepareStatement(eliminaMarca);
        this.stmt.setInt(1, idMarca);
        this.stmt.executeUpdate();
    }
    
     
}
