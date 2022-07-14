package org.example.services;

import org.example.entitys.Rol;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface RolService {

    public void create(Rol r);
    public List<Rol> read();
    public Rol read(int idrol);
    public void update(Rol r);
    public void delete(int idrol);
}
