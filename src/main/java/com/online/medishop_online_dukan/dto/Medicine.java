package com.online.medishop_online_dukan.dto;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Medicine {
	
	@Id
	private int id;
	private String name;
	private double price;
	private int quantity;
	private byte[] image;
	private String description;
	private String companyName;
	@Column(name = "mfd")
	private LocalDate ManufacturingDate;
	@Column(name = "expd")
	private LocalDate ExpiryDate;
}
