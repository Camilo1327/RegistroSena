/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modeldao;

import config.Conexion;
import interfaz.MeAprendiz;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
import model.Aprendiz;



public class AprendizDao implements MeAprendiz {
    Conexion cn = new Conexion();
        Aprendiz ap = new Aprendiz();
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        
    
    
    @Override
    public Aprendiz list(int ide) {
        String sql = "select * from aprendiz where id="+ide;
        try{
        con=cn.getConnection();
        ps=con.prepareStatement(sql);
        rs=ps.executeQuery();
        while(rs.next()){
        ap.setId(rs.getInt("id"));
        ap.setDocu(rs.getInt("Docu"));
        ap.setNombrea(rs.getString("Nombrea"));
        ap.setApellidoa(rs.getString("Apellidoa"));
        ap.setCorreoa(rs.getString("Correoa"));
        ap.setNumcontacto(rs.getInt("Numcontacto"));
        }
        }catch(Exception e)
        {
            JOptionPane.showMessageDialog(null,"No puede traer la informacion");
        }
        return ap;
    }

    @Override
    public List listarape() {
        ArrayList<Aprendiz> lista= new ArrayList<Aprendiz>();
        String sql="select * from aprendiz";
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
            Aprendiz usu=new Aprendiz();
            usu.setId(rs.getInt("id"));
            usu.setDocu(rs.getInt("Docu"));
            usu.setNombrea(rs.getString("Nombrea"));
            usu.setApellidoa(rs.getString("Apellidoa"));
            usu.setCorreoa(rs.getString("Correoa"));
            usu.setNumcontacto(rs.getInt("Numcontacto"));
            lista.add(usu);
            }
        }catch(Exception e){
        
        }
        return lista;
    
    }

    @Override
    public boolean registrarape(Aprendiz pro) {
        String sql="insert into aprendiz(Docu,Nombrea,Apellidoa,Correoa,Numcontacto)values('"+pro.getDocu()+"','"+pro.getNombrea()+"','"+pro.getApellidoa()+"','"+pro.getCorreoa()+"','"+pro.getNumcontacto()+"')";
        try{
        con=cn.getConnection();
        ps=con.prepareStatement(sql);
        ps.executeUpdate();
        JOptionPane.showMessageDialog(null,"Aprendiz registrado");
        }catch(Exception e){
        JOptionPane.showMessageDialog(null,"Aprendiz no registrado");
        }
        return false;
    }

    

    @Override
    public boolean actualizarape(Aprendiz pro) {
        String sql = "update aprendiz set Docu='"+ap.getDocu()+"',Nombrea='"+ap.getNombrea()+"',Apellidoa='"+ap.getApellidoa()+"',Correoa='"+ap.getCorreoa()+"',Numcontacto='"+ap.getNumcontacto()+"' where id="+ap.getId();
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }  catch (Exception e)  {
        }
        return false;  
   
    }
  
    

    @Override
public boolean eliminarape(int id) {
       
        String sql="delete from aprendiz where id="+id;
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.execute();
        }catch(Exception e){
        }
        return false;
    }
}
