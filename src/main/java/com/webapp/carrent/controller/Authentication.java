package com.webapp.carrent.controller;

import java.util.Optional;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webapp.carrent.model.User;
import com.webapp.carrent.repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Authentication {

  @Autowired
  private UserRepository userRepo;
  
  @GetMapping(value = "/login")
  public String login(@CookieValue(name = "carrent", required = false) String userId, HttpServletRequest req ){
    if(userId!=null)
      return "redirect:/"+(Optional.ofNullable(req.getQueryString()).orElse("").contains("redirect=/")?Optional.ofNullable(req.getQueryString()).orElse("").split("redirect=/",2)[1]:"");
    else{

      return "login";
    }
  }
  @GetMapping(value = "/signup")
  public String signup(@CookieValue(name = "carrent", required = false) String userId, HttpServletRequest req){
    if(userId!=null)
      return "redirect:/"+(Optional.ofNullable(req.getQueryString()).orElse("").contains("redirect=/")?Optional.ofNullable(req.getQueryString()).orElse("").split("redirect=/",2)[1]:"");
    else
      return "signup";
  }

  @PostMapping(value = "/login")
  public ModelAndView loginPost(@RequestParam(name = "email", required=false) String email, @RequestParam(name = "password", required=false) String password, HttpServletResponse res,  HttpServletRequest req) {
    
    ModelAndView mv = new ModelAndView();
    User user = Optional.ofNullable(userRepo.findByEmail(email)).orElse(new User());
    if(user.getPassword()!=null && user.getPassword().equals(password)){
      res.addCookie(new Cookie("carrent", user.getId().toString()));
      mv.setViewName("redirect:/"+(Optional.ofNullable(req.getQueryString()).orElse("").contains("redirect=/")?Optional.ofNullable(req.getQueryString()).orElse("").split("redirect=/",2)[1]:""));
    }else{
      mv.addObject("error", true);
      mv.setViewName("login");
    }

    return mv;
  }


  @PostMapping(value = "/signup")
  public ModelAndView SignupPost(@RequestParam(name = "name", required=false) String name,@RequestParam(name = "email", required=false) String email, @RequestParam(name = "password", required=false) String password, HttpServletResponse res,  HttpServletRequest req) {
    
    ModelAndView mv = new ModelAndView();
    User user = userRepo.findByEmail(email);
    if(user==null){
      User newUser = new User();
      newUser.setEmail(email);
      newUser.setPassword(password);
      newUser.setName(name);
      newUser = userRepo.save(newUser);

      res.addCookie(new Cookie("carrent", newUser.getId().toString()));
      mv.setViewName("redirect:/"+(Optional.ofNullable(req.getQueryString()).orElse("").contains("redirect=/")?Optional.ofNullable(req.getQueryString()).orElse("").split("redirect=/",2)[1]:""));
    }else{
      mv.addObject("error", true);
      mv.setViewName("signup");
    }

    return mv;
  }

  @GetMapping(value="/logout")
  public String logout(HttpServletResponse res){
    Cookie cookie = new Cookie("carrent", null);
    cookie.setMaxAge(0);
    res.addCookie(cookie);
    return "redirect:/";
  }
}
