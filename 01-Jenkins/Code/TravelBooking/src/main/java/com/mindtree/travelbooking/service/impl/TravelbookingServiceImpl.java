package com.mindtree.travelbooking.service.impl;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.travelbooking.entity.Booking;
import com.mindtree.travelbooking.entity.User;
import com.mindtree.travelbooking.exceptions.NoSuchDateOfJourneyException;
import com.mindtree.travelbooking.exceptions.ServiceException;
import com.mindtree.travelbooking.repository.BookingRepository;
import com.mindtree.travelbooking.repository.UserRepository;
import com.mindtree.travelbooking.service.TravelbookingService;

@Service
public class TravelbookingServiceImpl implements TravelbookingService {

	@Autowired
	BookingRepository bookingRepositoryObj;

	@Autowired
	UserRepository userRepositoryObj;

	@Override
	public void addUser(User users) {

		userRepositoryObj.save(users);

	}

	@Override
	public Object getUsers() {
		List<User> usersList = userRepositoryObj.findAll();
		return usersList;
	}

	@Override
	public void addBooking(int userId, Booking booking) {

		User users = userRepositoryObj.findById(userId).get();
		booking.setUsers(users);
		// int age=users.getAge();
		int price = 0;
		price = booking.getDistance() * 10;
		booking.setPrice(price);
		
		bookingRepositoryObj.save(booking);

	}

	@Override
	public List<Booking> getBookingDetails(int userId, Date dateOfJourney) throws ServiceException {
		
		User users= userRepositoryObj.findById(userId).get();
		List<Booking> savedBookings=new ArrayList<Booking>();
		List<Booking> bookingsList=users.getBookings();
		for (Booking booking : bookingsList) {
			
			if(booking.getDateOfJourney().after(dateOfJourney) || booking.getDateOfJourney().equals(dateOfJourney))
			{
				savedBookings.add(booking);
			}
			else 
			{
				throw new NoSuchDateOfJourneyException("no such date of journey exception");
			}
		}
		return savedBookings;
		
	}

	@Override
	public Booking updateDetails(int bookingId) {
		
		Booking bookings=bookingRepositoryObj.getOne(bookingId);
		return bookings;
	}

	@Override
	public void updateBooking(Booking booking, String formAddress, String toAddress, int distance) {
		booking.setFormAddress(formAddress);
		booking.setToAddress(toAddress);
		booking.setDistance(distance);
		double price = 0;
		price = booking.getDistance() * 10;
		booking.setPrice(price);
		bookingRepositoryObj.save(booking);
		
		
	}
	
	

}
