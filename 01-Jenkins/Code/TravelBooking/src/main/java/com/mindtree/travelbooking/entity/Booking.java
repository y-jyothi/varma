package com.mindtree.travelbooking.entity;

import java.sql.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Booking {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int bookingId;
	private String formAddress;
	private String toAddress;
	private Date dateOfJourney;
	private int distance;
	private double price;
	private String foodPreference;
	private String travellingType;
	
	@ManyToOne(cascade = CascadeType.ALL)
	private User users;

	public Booking() {
		super();
	}

	public Booking(int bookingId, String formAddress, String toAddress, Date dateOfJourney, int distance, double price,
			String foodPreference, String travellingType, User users) {
		super();
		this.bookingId = bookingId;
		this.formAddress = formAddress;
		this.toAddress = toAddress;
		this.dateOfJourney = dateOfJourney;
		this.distance = distance;
		this.price = price;
		this.foodPreference = foodPreference;
		this.travellingType = travellingType;
		this.users = users;
	}

	public int getBookingId() {
		return bookingId;
	}

	public void setBookingId(int bookingId) {
		this.bookingId = bookingId;
	}

	public String getFormAddress() {
		return formAddress;
	}

	public void setFormAddress(String formAddress) {
		this.formAddress = formAddress;
	}

	public String getToAddress() {
		return toAddress;
	}

	public void setToAddress(String toAddress) {
		this.toAddress = toAddress;
	}

	public Date getDateOfJourney() {
		return dateOfJourney;
	}

	public void setDateOfJourney(Date dateOfJourney) {
		this.dateOfJourney = dateOfJourney;
	}

	public int getDistance() {
		return distance;
	}

	public void setDistance(int distance) {
		this.distance = distance;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getFoodPreference() {
		return foodPreference;
	}

	public void setFoodPreference(String foodPreference) {
		this.foodPreference = foodPreference;
	}

	public String getTravellingType() {
		return travellingType;
	}

	public void setTravellingType(String travellingType) {
		this.travellingType = travellingType;
	}

	public User getUsers() {
		return users;
	}

	public void setUsers(User users) {
		this.users = users;
	}

	@Override
	public String toString() {
		return "Booking [bookingId=" + bookingId + ", formAddress=" + formAddress + ", toAddress=" + toAddress
				+ ", dateOfJourney=" + dateOfJourney + ", distance=" + distance + ", price=" + price
				+ ", foodPreference=" + foodPreference + ", travellingType=" + travellingType + ", users=" + users
				+ "]";
	}

	
	
	

}
