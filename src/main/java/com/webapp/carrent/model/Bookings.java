package com.webapp.carrent.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Entity
public class Bookings {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Integer booking_id;
  private Date pickupDate;
  private Date dropoffDate;
  private String pickup;
  private String dropoff;

  @OneToOne(targetEntity = Cars.class, cascade = CascadeType.DETACH)
  private Cars car;
  
  @OneToOne
  private User user;
}
