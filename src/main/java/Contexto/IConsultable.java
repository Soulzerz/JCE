/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main.java.Contexto;

import java.util.List;

/**
 *
 * @author developer
 * @param <T>
 */
public interface IConsultable<T>
{
    public void insertar(T o);
    public T seleccionar(int Id);
    public List<T> seleccionarTodos();
    public void eliminar(int Id);
    public void modificar(int Id);
}
