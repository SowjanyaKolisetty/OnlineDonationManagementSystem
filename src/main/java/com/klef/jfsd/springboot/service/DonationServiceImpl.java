package com.klef.jfsd.springboot.service;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Donation;
import com.klef.jfsd.springboot.model.Request;
import com.klef.jfsd.springboot.repository.DonationRepository;
import com.klef.jfsd.springboot.repository.RequestRepository;

@Service
public class DonationServiceImpl implements DonationService
{
	@Autowired
	public DonationRepository donationRepository;
	
	@Autowired
	public RequestRepository requestRepository;

	@Override
	public String AddDonation(Donation donate) 
	{
		donationRepository.save(donate);
		return "Donation Submitted Successfully";	
	}
	 public List<Donation> ViewAllDonations() 
	 {
	     return donationRepository.findAll();
	  }
	 public Donation getDonationById(int id) 
	 { 
		 return donationRepository.findById(id).orElse(null);
	 }
	 public void deleteDonationById(int id) 
	 {
	     donationRepository.deleteById(id);
	  }
	 public long donationcount()
	 {
	 	return donationRepository.count();
	 }
	 public String saveDonation(Request request) {
	        // Process the image (convert MultipartFile to Blob if needed) 
	        // Save donation request in the database
	        requestRepository.save(request);
	        return "Request Submmitted Successfully";
	    }
	@Override
	public List<Request> ViewAllRequests() 
	{
		return (List<Request>) requestRepository.findAll();
		
	}

}
