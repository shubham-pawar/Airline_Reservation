package com.model;

import java.sql.Date;

/**
 * Model class for add flight form
 * @author group 14
 *
 */
// import java.sql.Date;

public class Flight {
	private String flightnumber;
	private String source;
	private String destination;
	private String depart;
	private String arrive;
	private String duration;
	private String price;
	private Date flydate;

	public Flight() {
	}

	public Flight(String flightnumber, String source, String destination, String depart, String arrive, String duration,
			String price, Date flydate) {
		super();
		this.flightnumber = flightnumber;
		this.source = source;
		this.destination = destination;
		this.depart = depart;
		this.arrive = arrive;
		this.duration = duration;
		this.price = price;
		this.flydate = flydate;
	}

	public String getFlightnumber() {
		return flightnumber;
	}

	public void setFlightnumber(String flightnumber) {
		this.flightnumber = flightnumber;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getDepart() {
		return depart;
	}

	public void setDepart(String depart) {
		this.depart = depart;
	}

	public String getArrive() {
		return arrive;
	}

	public void setArrive(String arrive) {
		this.arrive = arrive;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public Date getFlydate() {
		return flydate;
	}

	public void setFlydate(Date flydate) {
		this.flydate = flydate;
	}

}
