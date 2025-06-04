package com.example.mvcproject.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/membership")
public class MembershipController {
    @GetMapping
    public String membership(){
        System.out.println("회원가입");
        return "login/membership";
    }
}
