package org.example.entitys;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "rol_usuario")
public class Rol_Usuario {

    @Id
    private int id;

    private int idrol;

    private String username;
    private Boolean habilitado;


    public Rol_Usuario(){
        super();
    }


    public Rol_Usuario(int id, int idrol, String username, Boolean habilitado) {
        this.id = id;
        this.idrol = idrol;
        this.username = username;
        this.habilitado = habilitado;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdrol() {
        return idrol;
    }

    public void setIdrol(int idrol) {
        this.idrol = idrol;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Boolean getHabilitado() {
        return habilitado;
    }

    public void setHabilitado(Boolean habilitado) {
        this.habilitado = habilitado;
    }
}
