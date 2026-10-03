package test;

import harryPotter.Character;
import org.junit.Test;

import static org.junit.Assert.*;

public class CharacterTest {

    @Test
    public void testCasaPorDefectoCuandoEsNull(){
        Character c = new Character("Alastor Moody", "British or English", "Pure-blood", null );

        assertEquals("No information", c.obtenerCasa());
    }

    @Test
    public void testPersonajeConCasaValida(){
        Character c = new Character("Harry Potter","English", "Half-blood", "Gryffindor");

        assertEquals("Gryffindor", c.obtenerCasa());
    }

    @Test
    public void testPersonajeNoVacio(){
        Character c = new Character("Hermione Jean Granger","English", "Muggle-born", "Gryffindor");

        assertTrue("Gryffindor", c.nombreValido());
        assertNotNull("Gryffindor", c.getName());
    }


}
