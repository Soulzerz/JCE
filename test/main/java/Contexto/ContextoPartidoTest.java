/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main.java.Contexto;

import java.util.List;
import main.java.modelos.Partido;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author developer
 */
public class ContextoPartidoTest {
    
    public ContextoPartidoTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of insertar method, of class ContextoPartido.
     */
    @Test
    public void testInsertar() {
        System.out.println("insertar");
        Partido o = new Partido();
        o.setNombre("PRD");
        ContextoPartido instance = new ContextoPartido("hibernateMySQL.cfg.xml");
        instance.insertar(o);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

}
