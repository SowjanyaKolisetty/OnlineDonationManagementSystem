package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Donation;
import com.klef.jfsd.springboot.model.Recipient;

public interface RecipientService 
{
	public String RecipientRegistration(Recipient r);
	public Recipient checkerecipientlogin(String remail, String rpwd);
	public Recipient displayRecipientByID(int rid);
	public String UpdateRecipientProfile(Recipient recipient);
	
	 //public List<Donation> ViewAllDonationsByRecipient();

}
