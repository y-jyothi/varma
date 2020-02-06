package com.mindtree.travelbooking.service;

import java.sql.Date;
import java.util.List;

import com.mindtree.travelbooking.entity.Booking;
import com.mindtree.travelbooking.entity.User;
import com.mindtree.travelbooking.exceptions.ServiceException;

public interface TravelbookingService {

	public void addUser(User users);

	public Object getUsers();

	public void addBooking(int userId, Booking booking);

	public List<Booking> getBookingDetails(int userId, Date dateOfJourney) throws ServiceException;

	public Booking updateDetails(int bookingId);

	public void updateBooking(Booking b, String formAddress, String toAddress, int distance);

}
