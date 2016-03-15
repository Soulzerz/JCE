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
     * Test of seleccionarTodos method, of class ContextoPartido.
     */
    @Test
    public void testSeleccionarTodos() {
        System.out.println("seleccionarTodos");
        ContextoPartido instance = new ContextoPartido();
        List<Partido> expResult = instance.seleccionarTodos();
        List<Partido> result = instance.seleccionarTodos();
        assertEquals(expResult, result);
        
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

}
