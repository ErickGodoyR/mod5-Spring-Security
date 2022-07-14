package org.example.controllers;


import org.example.entitys.Usuario;
import org.example.services.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.security.SecureRandom;

@Controller
@RequestMapping(path = "/usuario")
public class usuarioController {

    @Autowired
    UsuarioService us;

    @GetMapping
    public String Usuarioregistro(Model modelo) {

        modelo.addAttribute("usuario", us.read());
        // Mostrar página
        return "usuario";
    }

    //Agregar objeto
    @RequestMapping("/nuevoUsuario/")
    public String addUsuario(Model model){
        Usuario u = new Usuario();
        model.addAttribute("usuario", u);

        return "nuevoUsuario";
    }

    @GetMapping(value = "/edit/{id}")
    public String updateUsuario(@PathVariable("id") int id, Model model){

        model.addAttribute("usuario", us.read(id));

        return "editUsuario";
    }

    @PostMapping(value="/edit/")
    public String saveUsuario(
            @RequestParam(name="id") int id,
            @RequestParam(name="username") String username,
            @RequestParam(name="nombre") String nombre,
            @RequestParam(name="email") String email,
            @RequestParam(name="password") String password) {

        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(10, new SecureRandom());

        Usuario u = us.read(id);
        u.setUsername(username);
        u.setNombre(nombre);
        u.setEmail(email);
        u.setPassword(encoder.encode(password));
        us.update(u);

        return "redirect:/rol_usuario/editRol_usuario/";

    }



    @RequestMapping("/del/{id}")
    public String deleteUsuario(@PathVariable(name ="id") Long id){
        us.delete(Math.toIntExact(id));

        return "redirect:/usuario";
    }


}
