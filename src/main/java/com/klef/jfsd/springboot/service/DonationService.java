package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Donation;
import com.klef.jfsd.springboot.model.Request;

public interface DonationService 
{
	public String AddDonation(Donation donate);
	 public List<Donation> ViewAllDonations();
	 public Donation getDonationById(int id);
	 public void deleteDonationById(int id);
	public long donationcount();
	public String saveDonation(Request request);
	public List<Request> ViewAllRequests();

}
