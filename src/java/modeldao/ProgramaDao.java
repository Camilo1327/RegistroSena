/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modeldao;

import config.Conexion;
import interfaz.MePrograma;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
import model.Programa;

/**
 *
 * @author APRENDIZ
 */
public class ProgramaDao implements MePrograma {
        Conexion cn = new Conexion();
        Programa po = new Programa();
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        
        
    @Override
    public Programa list(int id) {
        String sql = "select * from programa where idpro="+id;
        try{
        con=cn.getConnection();
        ps=con.prepareStatement(sql);
        rs=ps.executeQuery();
        while(rs.next()){
        po.setidpro(rs.getInt("idpro"));
        po.setcodpro(rs.getInt("codpro"));
        po.setnompro(rs.getString("nompro"));
        
        }
        }catch(Exception e)
        {
            JOptionPane.showMessageDialog(null,"No puede traer la informacion");
        }
        return po;    }

    @Override
     public List listarpro() {
        ArrayList<Programa> lista= new ArrayList<Programa>();
        String sql="select * from programa";
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
            Programa usu=new Programa();
            usu.setidpro(rs.getInt("idpro"));
            usu.setcodpro(rs.getInt("codpro"));
            usu.setnompro(rs.getString("nompro"));
            lista.add(usu);
            }
        }catch(Exception e){
        
        }
        return lista;
    
    }

    @Override
    public boolean registrarpro(Programa pro) {
        String sql="insert into programa(codpro,nompro)values('"+pro.getcodpro()+"','"+pro.getnompro()+"')";
        try{
        con=cn.getConnection();
        ps=con.prepareStatement(sql);
        ps.executeUpdate();
        JOptionPane.showMessageDialog(null,"Programa registrado");
        }catch(Exception e){
        JOptionPane.showMessageDialog(null,"Programa no registrado");
        }
        return false;
    }

    @Override
    public boolean actualizarpro(Programa pro) {
                 String sql="update programa set codpro='"+po.getcodpro()+"',nompro='"+po.getnompro()+"',Apellidoa='"; 
          try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
        }
        return false;
    }

    @Override
    public boolean eliminarpro(int idpro) {
    String sql="delete from programa where idpro="+idpro;
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.execute();
        }catch(Exception e){
        }
        return false;
    }


    }


