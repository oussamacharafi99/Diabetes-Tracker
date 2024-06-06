package com.servlets;


import com.Beans.Diabetes;
import com.Services.DiabetesService;
import com.Services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DiabetesTrackerController {
    @Autowired
    private DiabetesService diabetesService;

    @RequestMapping(value = "/" )
    public String showdata() {
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
        return "redirect:/k";
    }

    @RequestMapping("/saveDiabetes")
    public String saveDiabetes(@ModelAttribute Diabetes diabetes) {
        diabetesService.save(diabetes);
        return "redirect:/";
    }
}
