package com.servlets;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DiabetesTrackerController {

//    private final EtudiantsDAO etudiantsDAO;
//    public EtudiantController(EtudiantsDAO etudiantsDAO){
//        this.etudiantsDAO = etudiantsDAO;
//    }

    @RequestMapping(value = "/" )
    public String showHome(Model model) {
        return "home";
    }

}
