package org.example.services;

import org.example.entitys.Rol_Usuario;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface RolUsuarioService {
    public void create(Rol_Usuario ru);
    public List<Rol_Usuario> read();
    public Rol_Usuario read(int id);
    public void update(Rol_Usuario ru);
    public void delete(int id);

}
