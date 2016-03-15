/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main.java.modelos;

/**
 *
 * @author developer
 */
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;

@Entity
public class Partido 
{
    @Id
    @GeneratedValue
    private long Id;
    private String Nombre;
    private long totalVotos;

    public long getId() {
        return Id;
    }

    public void setId(long Id) {
        this.Id = Id;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public long getTotalVotos() {
        return totalVotos;
    }

    public void setTotalVotos(long totalVotos) {
        this.totalVotos = totalVotos;
    }

    public Partido() {}
}
