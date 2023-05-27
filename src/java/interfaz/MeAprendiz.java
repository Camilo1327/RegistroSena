/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package interfaz;

import java.util.List;
import model.Aprendiz;

/**
 *
 * @author APRENDIZ
 */
public interface MeAprendiz {
    
        public Aprendiz list(int id);
    public List listarape();
    public boolean registrarape(Aprendiz pro);
    public boolean actualizarape(Aprendiz pro);
    public boolean eliminarape(int id);
}
