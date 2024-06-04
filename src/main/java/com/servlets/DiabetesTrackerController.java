package com.servlets;


import com.Beans.Diabetes;
import com.Services.DiabetesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DiabetesTrackerController {
    @Autowired
    private DiabetesService diabetesService;

    @RequestMapping(value = "/" )
    public String showdata(Model model) {
        model.addAttribute("diabetes", diabetesService.getDiabetes());
        return "home";
    }
    @RequestMapping(value = "/deletDiabetes/{id}")
    public String delete(@PathVariable("id") int id) {
        diabetesService.delete(id);
        return "redirect:/";
    }


}
