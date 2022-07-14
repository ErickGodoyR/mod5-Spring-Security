package org.example.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(path = "/regAdmin")
public class indexAdminController {

    @GetMapping
    public String Admin(Model modelo) {

        // Mostrar página
        return "regAdmin";
    }
}
