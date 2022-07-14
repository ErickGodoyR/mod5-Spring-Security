package org.example.services;

import org.example.entitys.Usuario;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface UsuarioService {
    public void create(Usuario u);
    public List<Usuario> read();
    public Usuario read(int id);
    public void update(Usuario u);
    public void delete(int id);
}
