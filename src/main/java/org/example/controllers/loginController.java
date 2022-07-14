package org.example.controllers;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
public class loginController {

    @GetMapping("/login")
    public String login(){

        return "login";
    }

    //@GetMapping("/error")
    @PostMapping("/error")
    public String errorLogin(Model model){
        model.addAttribute("error", "true");
        return "login";
    }

    @GetMapping("/logout")
    public String logout(){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth!= null){
            SecurityContextHolder.getContext().setAuthentication(null);
        }
        return "redirect:/login";
    }
}