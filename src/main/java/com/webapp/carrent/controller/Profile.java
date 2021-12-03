package com.webapp.carrent.controller;

import java.util.Date;
import java.util.Optional;
import java.util.concurrent.TimeUnit;

import com.webapp.carrent.dto.BookingDetailsDTO;
import com.webapp.carrent.model.User;
import com.webapp.carrent.repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Profile {

  @Autowired
  private UserRepository userRepo;
  
  @GetMapping("/overview")
  public ModelAndView profile(@CookieValue(name = "carrent", required = false) Integer userId){
    ModelAndView mv = new ModelAndView();

    Date currentDate = new Date();
    
    User user = Optional.ofNullable(userRepo.getById(userId)).orElse(null);
    if (userId != null && user!=null) {
      mv.addObject("name", user.getName());

      mv.addObject("upcomming", user.getBookings().subList(0,user.getBookings().size()>4?4:user.getBookings().size()).stream().filter(b-> b.getDropoffDate().after(currentDate)).map(b->{
        BookingDetailsDTO dto = new BookingDetailsDTO();

        dto.setBooking_id(b.getBooking_id());
        dto.setPickup(b.getPickup());
        dto.setDropoff(b.getDropoff());
        dto.setPickupDate(b.getPickupDate());
        dto.setDropoffDate(b.getDropoffDate());
        dto.setCar(b.getCar());
        dto.setDayCount(TimeUnit.DAYS.convert(Math.abs(b.getPickupDate().getTime() - b.getDropoffDate().getTime()), TimeUnit.MILLISECONDS));

        return dto;
      }).toList());
      
      mv.addObject("history", user.getBookings().subList(0,user.getBookings().size()>4?4:user.getBookings().size()).stream().filter(b-> b.getDropoffDate().before(currentDate)).map(b->{
        BookingDetailsDTO dto = new BookingDetailsDTO();

        dto.setBooking_id(b.getBooking_id());
        dto.setPickup(b.getPickup());
        dto.setDropoff(b.getDropoff());
        dto.setPickupDate(b.getPickupDate());
        dto.setDropoffDate(b.getDropoffDate());
        dto.setCar(b.getCar());
        dto.setDayCount(TimeUnit.DAYS.convert(Math.abs(b.getPickupDate().getTime() - b.getDropoffDate().getTime()), TimeUnit.MILLISECONDS));

        mv.addObject("name", user.getName());

        return dto;
      }).toList());

      mv.setViewName("/overview");
    } else
      mv.setViewName("redirect:/login?redirect=/profile");

    return mv;
  }
  
  @GetMapping("/upcommingBookings")
  public ModelAndView upCommingAllBookings(@CookieValue(name = "carrent", required = false) Integer userId){
    ModelAndView mv = new ModelAndView();

    Date currentDate = new Date();
    
    User user = Optional.ofNullable(userRepo.getById(userId)).orElse(null);
    if (userId != null && user!=null) {
      mv.addObject("b", user.getBookings().stream().filter(b-> b.getDropoffDate().after(currentDate)).map(b->{
        BookingDetailsDTO dto = new BookingDetailsDTO();

        dto.setBooking_id(b.getBooking_id());
        dto.setPickup(b.getPickup());
        dto.setDropoff(b.getDropoff());
        dto.setPickupDate(b.getPickupDate());
        dto.setDropoffDate(b.getDropoffDate());
        dto.setCar(b.getCar());
        dto.setDayCount(TimeUnit.DAYS.convert(Math.abs(b.getPickupDate().getTime() - b.getDropoffDate().getTime()), TimeUnit.MILLISECONDS));

        return dto;
      }).toList());

      mv.setViewName("/allBookings");
    } else
      mv.setViewName("redirect:/login?redirect=/allBookings");

    return mv;
  }

  @GetMapping("/history")
  public ModelAndView history(@CookieValue(name = "carrent", required = false) Integer userId){
    ModelAndView mv = new ModelAndView();

    Date currentDate = new Date();
    
    User user = Optional.ofNullable(userRepo.getById(userId)).orElse(null);
    if (userId != null && user!=null) {

      mv.addObject("history",true);
      
      mv.addObject("b", user.getBookings().stream().filter(b-> b.getDropoffDate().before(currentDate)).map(b->{
        BookingDetailsDTO dto = new BookingDetailsDTO();

        dto.setBooking_id(b.getBooking_id());
        dto.setPickup(b.getPickup());
        dto.setDropoff(b.getDropoff());
        dto.setPickupDate(b.getPickupDate());
        dto.setDropoffDate(b.getDropoffDate());
        dto.setCar(b.getCar());
        dto.setDayCount(TimeUnit.DAYS.convert(Math.abs(b.getPickupDate().getTime() - b.getDropoffDate().getTime()), TimeUnit.MILLISECONDS));

        mv.addObject("name", user.getName());

        return dto;
      }).toList());

      mv.setViewName("/allBookings");
    } else
      mv.setViewName("redirect:/login?redirect=/allBookings");

    return mv;
  }
}
