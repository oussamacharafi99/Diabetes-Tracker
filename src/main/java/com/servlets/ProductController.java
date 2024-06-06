package com.servlets;

import com.Services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class ProductController {

    @Autowired
    private ProductService productService;

    @RequestMapping(value = "/dd" )
    public String showProduct(Model model) {
        return "dashboard";
    }
}
