package com.webapp.carrent.dto;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.webapp.carrent.model.Cars;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class BookingDetailsDTO {
  private Integer booking_id;
  private String pickupDate;
  private String dropoffDate;
  private String pickup;
  private String dropoff;
  private Cars car;
  private Long dayCount;
  // private User user;

  public void setPickupDate(Date d){
    DateFormat dateFormat2 = new SimpleDateFormat("dd MMM yyyy");
    pickupDate = d!= null ? dateFormat2.format(d) : null;
  }

  public void setDropoffDate(Date d){
    DateFormat dateFormat2 = new SimpleDateFormat("dd MMM yyyy");
    dropoffDate = d != null ? dateFormat2.format(d) : null;
  }
}
