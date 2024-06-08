package com.servlets;


import com.Beans.Diabetes;
import com.Services.DiabetesServiceImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;

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
        model.addAttribute("diabeteDate",diabetesService.getLastDiabetesRecord().getDate());
        model.addAttribute("diabeteTime",diabetesService.getLastDiabetesRecord().getHeurs());
        model.addAttribute("allDiabetes",diabetesService.getDiabetes());
        return "dashboard";
    }

    @RequestMapping("/saveDiabetes")
    public String saveDiabetes(@ModelAttribute Diabetes diabetes , Model model) {;
        diabetesService.save(diabetes);
        return "redirect:/";
    }

    @PostMapping("/search")
    public String searchDiabetesByDate(String search, Model model) {
        LocalDate searchDate = LocalDate.parse(search);
        model.addAttribute("diabetes",new Diabetes());
        model.addAttribute("diabeteOne",diabetesService.getLastDiabetesRecord().getDiabetes());
        model.addAttribute("diabeteDate",diabetesService.getLastDiabetesRecord().getDate());
        model.addAttribute("diabeteTime",diabetesService.getLastDiabetesRecord().getHeurs());
        model.addAttribute("diabetesList" , diabetesService.searchByDate(searchDate));
        diabetesService.searchByDate(searchDate).forEach(item -> System.out.println(item.getDate()));
        return "dashboard";
    }
}

