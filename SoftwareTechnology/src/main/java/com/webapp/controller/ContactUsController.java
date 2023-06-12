package com.webapp.controller;

import java.sql.Timestamp;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.webapp.model.ContactUs;
import com.webapp.sevice.impl.ContactUsService;

@Controller
public class ContactUsController {

	@Autowired
	ContactUsService contactUsService;
	
	@PostMapping("saveContactUs")
	public ResponseEntity<ContactUs> saveContactUs(@RequestBody ContactUs contactUs) {
		contactUs.setCreatedAt(new Timestamp(new Date().getTime()));
		contactUs.setStatus(1);
		contactUs=contactUsService.saveContactUs(contactUs);
		return new ResponseEntity<>(contactUs,HttpStatus.OK);
	}
	
}
