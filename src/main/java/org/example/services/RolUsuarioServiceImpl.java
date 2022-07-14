package org.example.services;

import org.example.entitys.Rol_Usuario;
import org.example.repos.RolUsuarioRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RolUsuarioServiceImpl implements RolUsuarioService{

    @Autowired
    RolUsuarioRepo rur;

    @Override
    public void create(Rol_Usuario ru) {
        rur.save(ru);
    }

    @Override
    public List<Rol_Usuario> read() {
        return rur.findAll();
    }

    @Override
    public Rol_Usuario read(int id) {
        return rur.findById(id).orElse(new Rol_Usuario());
    }

    @Override
    public void update(Rol_Usuario ru) {
        rur.save(ru);
    }

    @Override
    public void delete(int id) {
        rur.deleteById(id);
    }
}
