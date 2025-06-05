package com.example.mvcproject.login;

import com.example.mvcproject.repository.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/login")
public class LoginController {
    @GetMapping
    public String login(){
        System.out.println("로그인");
        return "login/login";
    }
    @PostMapping
    public String loginck(User user, String remember, HttpServletResponse response){
//        System.out.println(user);
//        System.out.println(remember);
        if(remember != null){
            Cookie cookie = new Cookie("id", user.getId());
            cookie.setPath("/");
            cookie.setMaxAge(60*60*24);
            response.addCookie(cookie);
        }
        else{
            Cookie cookie = new Cookie("id", "");
            cookie.setPath("/");
            cookie.setMaxAge(0);
            response.addCookie(cookie);
        }
        if("test123".equals(user.getId()) && "test123".equals(user.getPassword())){
            System.out.println("로그인 성공");
            return "redirect:/hello";
        }
        else {
            System.out.println("로그인 실패");
            return "redirect:/";
        }
    }
}
