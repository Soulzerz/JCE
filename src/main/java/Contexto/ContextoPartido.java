/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main.java.Contexto;

/**
 *
 * @author developer
 * @param <T>
 */
import main.java.modelos.Partido;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;
public class ContextoPartido extends ContextoBase implements IConsultable<Partido>
{

    public ContextoPartido(String NombreConf) {
        super(NombreConf);
    }

    public ContextoPartido() {
        super();
    }

    @Override
    public void insertar(Partido o) {
        Session ses = this.getFactory().openSession();
        Transaction tx = ses.beginTransaction();
        ses.persist(o);
        tx.commit();
        ses.close();
    }

    @Override
    public Partido seleccionar(int Id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Partido> seleccionarTodos() {
        Session ses = this.getFactory().openSession();
        Transaction tx = ses.beginTransaction();
        List<Partido> Partidos = ses.createQuery("from Partido").list();
        tx.commit();
        ses.close();
        return Partidos;
    }

    @Override
    public void eliminar(int Id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void modificar(int Id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
