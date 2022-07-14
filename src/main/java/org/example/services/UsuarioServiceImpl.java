package org.example.services;

import org.example.entitys.Usuario;
import org.example.repos.UsuarioRepos;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UsuarioServiceImpl implements UsuarioService {

    @Autowired
    UsuarioRepos ur;

    @Override
    public void create(Usuario u) {
        ur.save(u);
    }

    @Override
    public List<Usuario> read() {
        return ur.findAll();
    }

    @Override
    public Usuario read(int id) {
        return ur.findById(id).orElse(new Usuario());
    }

    @Override
    public void update(Usuario u) {
        ur.save(u);
    }

    @Override
    public void delete(int id) {
        ur.deleteById(id);
    }
}
