package org.example.services;

import org.example.entitys.Rol;
import org.example.repos.RolRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RolServiceImpl implements RolService{
    @Autowired
    RolRepo rr;


    @Override
    public void create(Rol r) {
        rr.save(r);
    }

    @Override
    public List<Rol> read() {
        return rr.findAll();
    }

    @Override
    public Rol read(int idrol) {
        return rr.findById(idrol).orElse(new Rol());
    }

    @Override
    public void update(Rol r) {
        rr.save(r);
    }

    @Override
    public void delete(int idrol) {
        rr.deleteById(idrol);
    }
}
