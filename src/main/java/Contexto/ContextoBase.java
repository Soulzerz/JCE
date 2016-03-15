/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main.java.Contexto;

/**
 *
 * @author developer
 */
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;
import org.hibernate.SessionFactory;

public abstract class ContextoBase {
    private SessionFactory factory;

    public ContextoBase(String NombreConf) {
        Configuration conf = new Configuration();
        conf.configure(NombreConf);
        ServiceRegistryBuilder srBuilder = new ServiceRegistryBuilder();
        srBuilder.applySettings(conf.getProperties());
        ServiceRegistry sr = srBuilder.build();
        this.factory = conf.buildSessionFactory(sr);
    }
    
    public ContextoBase()
    {
        Configuration conf = new Configuration();
        conf.configure();
        ServiceRegistryBuilder srBuilder = new ServiceRegistryBuilder();
        srBuilder.applySettings(conf.getProperties());
        ServiceRegistry sr = srBuilder.build();
        this.factory = conf.buildSessionFactory(sr);
    }

    public SessionFactory getFactory() {
        return factory;
    }

    public void setFactory(SessionFactory factory) {
        this.factory = factory;
    }
    
    
}
