package com.main.service;

import com.main.model.Employee;

public interface homeService {

	void saveData(Employee emp);

	Iterable getAllData();

	Employee getSingleData(int empId, String password);

	void deleteData(int empId);

}
