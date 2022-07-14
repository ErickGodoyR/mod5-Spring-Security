package org.example.controllers;

import org.example.services.RolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(path = "/rol")
public class rolController {
    @Autowired
    RolService rs;

    @GetMapping
    public String getRol(Model model){
        model.addAttribute("rol", rs.read());
        return "rol";
    }
}





