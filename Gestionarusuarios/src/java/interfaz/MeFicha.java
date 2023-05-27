/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package interfaz;

import java.util.List;
import model.Ficha;

/**
 *
 * @author APRENDIZ
 */
public interface MeFicha {
    
    
    public Ficha list(int idficha);
    public List listaFichas();
    public boolean registroficha(Ficha fi);
    public boolean actualizarficha(Ficha fi);
    public boolean eliminarficha(int idficha);
    
}
