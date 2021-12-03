package com.webapp.carrent.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.TimeUnit;

import com.webapp.carrent.model.Bookings;
import com.webapp.carrent.repository.BookingsRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BookingDetails {

  @Autowired
  private BookingsRepository bookingRep;
  
  private DateFormat dateFormat2 = new SimpleDateFormat("dd MMM yyyy");
  
  @GetMapping("/bookingDetails/{bookingId}")
  public ModelAndView book(
    @CookieValue(name="carrent", required=false) Integer userId,
    @PathVariable(name="bookingId") Integer bookingId
  ){
    ModelAndView mv = new ModelAndView();

    Bookings bookingDetails = bookingRep.findById(bookingId).orElse(new Bookings());
    System.out.println(bookingDetails.getCar().getImages());
    if(userId!=null && bookingDetails!=null && bookingDetails.getUser().getId()==userId){
      
      mv.addObject("booking_id", bookingDetails.getBooking_id());
      mv.addObject("pickup", bookingDetails.getPickup());
      mv.addObject("dropoff", bookingDetails.getDropoff());
      mv.addObject("pickupDate", bookingDetails.getPickupDate()!= null ? dateFormat2.format(bookingDetails.getPickupDate()) : null);
      mv.addObject("dropoffDate", bookingDetails.getDropoffDate() != null ? dateFormat2.format(bookingDetails.getDropoffDate()) : null);
      mv.addObject("cancelAble", bookingDetails.getDropoffDate().after(new Date()));
      mv.addObject("car", bookingDetails.getCar());
      mv.addObject("dayCount", TimeUnit.DAYS.convert(Math.abs(bookingDetails.getDropoffDate().getTime() - bookingDetails.getPickupDate().getTime()), TimeUnit.MILLISECONDS));

      mv.setViewName("/bookingDeitals");
    }else
      mv.setViewName("redirect:/login");

    return mv;
  }


  @GetMapping("/cancleBooking/{bookingId}")
  public ModelAndView cancleBooking(
    @CookieValue(name="carrent", required=false) Integer userId,
    @PathVariable(name="bookingId") Integer bookingId
  ){
    ModelAndView mv = new ModelAndView();

    Bookings bookingDetails = bookingRep.findById(bookingId).orElse(new Bookings());
    if(userId!=null && bookingDetails!=null && bookingDetails.getUser().getId()==userId){
      
      bookingRep.delete(bookingDetails);

      mv.setViewName("redirect:/");
    }else
      mv.setViewName("redirect:/login");

    return mv;
  }
}
