package com.webapp.carrent.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import com.webapp.carrent.repository.CarsRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class Search {

  @Autowired
  private CarsRepository carRepo;

  private DateFormat dateFormat1 = new SimpleDateFormat("yyyy-MM-dd");
  private DateFormat dateFormat2 = new SimpleDateFormat("dd MMM yyyy");

  @GetMapping(value="/search")
  public ModelAndView getSearch(
    @CookieValue(name="carrent", required=false) String userId,
    @RequestParam(name="type",required=false) String type,
    @RequestParam(name="pickup",required=false) String pickup,
    @RequestParam(name="dropoff",required=false) String dropoff,
    @RequestParam(name="pickupDate",required=false) @DateTimeFormat(pattern = "yyyy-MM-dd") Date pickupDate,
    @RequestParam(name="dropoffDate",required=false) @DateTimeFormat(pattern = "yyyy-MM-dd") Date dropoffDate,
    HttpServletRequest req
  ) {
    ModelAndView mv = new ModelAndView();

    if (userId == null)
      mv.setViewName("redirect:/login?redirect=/search?"+req.getQueryString());
    else{
      mv.addObject("type",type);
      mv.addObject("pickup",pickup);
      mv.addObject("dropoff",dropoff);
      mv.addObject("pickupDate", pickupDate!=null? dateFormat1.format(pickupDate):null);
      mv.addObject("dropoffDate", dropoffDate != null ? dateFormat1.format(dropoffDate) : null);
      mv.setViewName("search");
    }

    return mv;
  }

  @GetMapping(value="/result")
  public ModelAndView getSearchResult(
    @CookieValue(name="carrent", required=false) String userId,
    @RequestParam(name="type",required=false) String type,
    @RequestParam(name="pickup",required=false) String pickup,
    @RequestParam(name="dropoff",required=false) String dropoff,
    @RequestParam(name="pickupDate",required=false) @DateTimeFormat(pattern = "yyyy-MM-dd") Date pickupDate,
    @RequestParam(name="dropoffDate",required=false) @DateTimeFormat(pattern = "yyyy-MM-dd") Date dropoffDate,
    HttpServletRequest req
  ) {
    ModelAndView mv = new ModelAndView();

    if (userId == null)
      mv.setViewName("redirect:/login?redirect=/result?"+req.getQueryString());
    else{
      mv.addObject("type",type);
      mv.addObject("pickup",pickup);
      mv.addObject("dropoff",dropoff);
      mv.addObject("pickupDate", pickupDate != null ? dateFormat2.format(pickupDate) : null);
      mv.addObject("dropoffDate", dropoffDate != null ? dateFormat2.format(dropoffDate) : null);
      mv.addObject("queryString", req.getQueryString());

      mv.addObject("cars", carRepo.findByType(type));
      
      mv.setViewName("result");
    }

    return mv;
  }
}
