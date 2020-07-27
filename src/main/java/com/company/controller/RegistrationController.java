package com.company.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RegistrationController {

    @GetMapping("/")
    public String getHome(ModelMap model) {
        model.addAttribute("user", getPrinciple());
        return "Home";
    }

    @GetMapping("/login")
    public String getLogin() {
        return "AuthorizationMenu/Login";
    }

    @GetMapping("/registration")
    public String getRegistration() {
        return "AuthorizationMenu/Registration";
    }

    @GetMapping("/loginError")
    public String printLoginError() {
        return "AuthorizationMenu/LoginError";
    }

    private String getPrinciple() {
        String username;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (principal instanceof UserDetails) {
            username = ((UserDetails) principal).getUsername();
        } else {
            username = principal.toString();
        }
        return username;
    }
}
