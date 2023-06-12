package com.webapp.dao.impl;

import javax.persistence.EntityManager;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webapp.dao.IContactUsDao;
import com.webapp.model.ContactUs;
import com.webapp.sevice.impl.ContactUsService;

@Repository
@Transactional
public class ContactUsDao implements IContactUsDao {

	@Autowired
	private EntityManager entityManager;
	

	@Override
	public ContactUs saveContactUs(ContactUs contactUs) {
		return entityManager.merge(contactUs);
	}
	
	

}
