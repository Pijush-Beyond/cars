package com.webapp.carrent.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Entity
public class Cars {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Integer car_id;
  private String name;
  private Integer price;

  private String type;
  private Integer engine;
  private Integer bhp;
  private String transmission;
  private Integer milage;

  @OneToMany(targetEntity = CarImages.class, cascade = CascadeType.ALL)
  @JoinColumn(name = "car_id", referencedColumnName = "car_id")
  private List<CarImages> images;
}
