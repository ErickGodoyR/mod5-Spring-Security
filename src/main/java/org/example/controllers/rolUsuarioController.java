package org.example.controllers;

import org.example.entitys.Rol_Usuario;
import org.example.services.RolUsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
@RequestMapping(path = "/rol_usuario")
public class rolUsuarioController {

    @Autowired
    RolUsuarioService rus;

    @GetMapping
    public String getRolUsuario(Model model){
        model.addAttribute("rol_usuario", rus.read());
        return "rol_usuario";
    }

    @RequestMapping("/editRol_usuario/")
    public String addRolUsuario(Model model){
        Rol_Usuario ru = new Rol_Usuario();
        model.addAttribute("rol_usuario", ru);

        return "editRol_usuario";
    }

    @GetMapping("/edit/{id}")
    public String updateRolUsuario(@PathVariable("id") int id, Model model){
        model.addAttribute("rol_usuario", rus.read(id));

        return "editRol_usuario";
    }

    @PostMapping("/edit/")
    public String saveRol_Usuario(
            @RequestParam(name = "id") int id,
            @RequestParam(name="idrol") int idrol,
            @RequestParam(name="username") String username,
            @RequestParam(name="habilitado") Boolean habilitado){

        Rol_Usuario ru = rus.read(id);
        ru.setIdrol(idrol);
        ru.setUsername(username);
        ru.setHabilitado(habilitado);

        rus.update(ru);

        return "redirect:/rol_usuario";
    }


    @RequestMapping("/del/{id}")
    public String deleteRolUsuario(@PathVariable(name ="id") Long id){
        rus.delete(Math.toIntExact(id));

        return "redirect:/rol_usuario";
    }

}
