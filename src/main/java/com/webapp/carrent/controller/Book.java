package com.webapp.carrent.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Optional;
import java.util.concurrent.TimeUnit;

import javax.servlet.http.HttpServletRequest;

import com.webapp.carrent.model.Bookings;
import com.webapp.carrent.model.Cars;
import com.webapp.carrent.repository.BookingsRepository;
import com.webapp.carrent.repository.CarsRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Book {

  @Autowired
  private CarsRepository carRepo;
  @Autowired
  private BookingsRepository bookingRep;

  private DateFormat dateFormat2 = new SimpleDateFormat("dd MMM yyyy");

  @GetMapping("/details/{car_id}")
  public ModelAndView getBookingDetails(
    @PathVariable("car_id") Integer car_id,
    @CookieValue(name="carrent", required=false) String userId,
    @RequestParam(name="type",required=false) String type,
    @RequestParam(name="pickup",required=false) String pickup,
    @RequestParam(name="dropoff",required=false) String dropoff,
    @RequestParam(name="pickupDate",required=false) @DateTimeFormat(pattern = "yyyy-MM-dd") Date pickupDate,
    @RequestParam(name="dropoffDate",required=false) @DateTimeFormat(pattern = "yyyy-MM-dd") Date dropoffDate,
    HttpServletRequest req
  ){
    ModelAndView mv = new ModelAndView();

    if(userId!=null){
      mv.addObject("type", type);
      mv.addObject("user", userId);
      mv.addObject("pickup", pickup);
      mv.addObject("dropoff", dropoff);
      mv.addObject("pickupDate", pickupDate != null ? dateFormat2.format(pickupDate) : null);
      mv.addObject("dropoffDate", dropoffDate != null ? dateFormat2.format(dropoffDate) : null);
      mv.addObject("car", Optional.ofNullable(carRepo.getById(car_id)).orElse(new Cars()));
      mv.addObject("dayCount", TimeUnit.DAYS.convert(Math.abs(pickupDate.getTime() - dropoffDate.getTime()), TimeUnit.MILLISECONDS));
      mv.setViewName("/details");
    }else
      mv.setViewName("redirect:/login?redirect=/result?"+req.getQueryString());

    return mv;
  }


  @PostMapping("/book")
  public ModelAndView book(
    @CookieValue(name="carrent", required=false) Integer userId,
    @ModelAttribute Bookings bookingDeitals
  ){
    ModelAndView mv = new ModelAndView();

    if(userId!=null && userId==bookingDeitals.getUser().getId()){
      bookingDeitals = bookingRep.save(bookingDeitals);
      mv.setViewName("redirect:/bookingDetails/"+bookingDeitals.getBooking_id());
    }else
      mv.setViewName("redirect:/login");

    return mv;
  }
}
