package com.main.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.model.User;
import com.main.repository.CjcRepository;
import com.main.service.CjcService;

@Service
public class CjcServiceImpl implements CjcService{
	
	@Autowired
	CjcRepository repo;

	@Override
	public void addData(User u) {
		repo.save(u);
	}

	
}
