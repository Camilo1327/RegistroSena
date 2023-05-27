package modeldao;

import config.Conexion;
import interfaz.MeFicha;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import javax.swing.JOptionPane;
import model.Ficha;

/**
 *
 * @author APRENDIZ
 */
public class FichaDao implements MeFicha{
    Ficha fi=new Ficha();
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet st;
    

    @Override
    public Ficha list(int cod) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List listaFichas() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean registroficha(Ficha fi) {
        String sql="insert into ficha(codficha,cantapre,codpro,codaprendiz)values('"+fi.getCodficha()+"','"+fi.getCantape()+"','"+fi.getCodpro()+"','"+fi.getCodaprendiz()+"')";
        try{
            
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
       
            JOptionPane.showMessageDialog(null,"Ficha registrada");
        }catch(Exception e)
        {
        } 
        return false;
    }

    @Override
    public boolean actualizarficha(Ficha fi) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }


    @Override
    public boolean eliminarficha(Ficha fi) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
   
}
