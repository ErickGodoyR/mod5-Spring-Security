package org.example.entitys;

import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class Rol{

        @Id
        private int idrol;
        private String nombre;

        public Rol(){
            super();
        }

    public Rol(int idrol, String nombre) {
        this.idrol = idrol;
        this.nombre = nombre;
    }

    public int getIdrol() {
        return idrol;
    }

    public void setIdrol(int idrol) {
        this.idrol = idrol;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
}


