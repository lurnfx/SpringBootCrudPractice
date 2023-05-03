package com.main.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.model.Employee;
import com.main.repository.homeRepository;
import com.main.service.homeService;

@Service
public class homeServiceImpl implements homeService{
   @Autowired
   homeRepository repo;
	
	@Override
	public void saveData(Employee emp) {
		repo.save(emp);
	}

	@Override
	public Iterable getAllData() {
		return repo.findAll();
	}

	@Override
	public Employee getSingleData(int empId, String password) {
		return repo.findAllByempIdAndPassword(empId, password);
	}

	@Override
	public void deleteData(int id) {
		 repo.deleteById(id);
	}

}
