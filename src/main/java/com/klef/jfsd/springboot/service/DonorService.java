package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Donor;
import com.razorpay.Order;

public interface DonorService 
{
	public String DonorRegistration(Donor d);
	public Donor checkdonorlogin(String email,String password);
	public Donor displayDonorByID(int did);
	public String UpdateDonorProfile(Donor d);
	

}
