package com.webapp.sevice.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webapp.dao.impl.ContactUsDao;
import com.webapp.model.ContactUs;
import com.webapp.service.IContactUsService;

@Service
public class ContactUsService implements IContactUsService{

	@Autowired
	private ContactUsDao contactUsDao;
	
	@Override
	public ContactUs saveContactUs(ContactUs contactUs) {
		return contactUsDao.saveContactUs(contactUs);
	}

}
