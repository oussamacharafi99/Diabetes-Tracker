package com.servlets;


import com.Beans.Diabetes;
import com.Services.DiabetesServiceImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DiabetesTrackerController {
    @Autowired
    private DiabetesServiceImp diabetesService;

//    @RequestMapping(value = "/" )
//    public String showdata() {
//        return "add";
//    }
    @RequestMapping(value = "/home" )
    public String home(Model model) {
        return "home";
    }
    @RequestMapping(value = "/add" )
    public String formulaire(Model model) {
        model.addAttribute("diabetes", new Diabetes());
        return "add";
    }

    @RequestMapping(value = "/deletDiabetes/{id}")
    public String delete(@PathVariable("id") int id) {
        diabetesService.delete(id);
        return "redirect:/";
    }

    @RequestMapping(value = "/" )
    public String addd(Model model) {
        model.addAttribute("diabetes",new Diabetes());
        model.addAttribute("diabeteOne",diabetesService.getLastDiabetesRecord().getDiabetes());
        model.addAttribute("LastTest" , diabetesService.getLastDiabetesRecord());
        return "dashboard";
    }

    @RequestMapping("/saveDiabetes")
    public String saveDiabetes(@ModelAttribute Diabetes diabetes , Model model) {;
        diabetesService.save(diabetes);
        return "redirect:/";
    }
}

