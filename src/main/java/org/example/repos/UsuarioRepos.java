package org.example.repos;

import org.example.entitys.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UsuarioRepos extends JpaRepository<Usuario, Integer> {

}
