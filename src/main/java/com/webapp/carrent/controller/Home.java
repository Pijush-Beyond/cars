package com.webapp.carrent.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Home {

  @RequestMapping
  public String get(){
    return "index";
  }
}
