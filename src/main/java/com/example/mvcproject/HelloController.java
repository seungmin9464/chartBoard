package com.example.mvcproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {
    @RequestMapping("/")
    public String index() {
        return "redirect:/login";
    }
    @RequestMapping("/hello")
    public String home(){
        return"hello";
    }
}