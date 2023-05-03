package com.main.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.main.model.Employee;

@Repository
public interface homeRepository extends CrudRepository<Employee, Integer>{
      
	  public Employee findAllByempIdAndPassword(int empId, String password);
}
