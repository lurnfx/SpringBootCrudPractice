package com.main.serviceImpl;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.main.model.Student;
import com.main.repository.HomeRepository;
import com.main.service.HomeService;

@Service
public class HomeServiceImpl implements HomeService {
    @Autowired
	HomeRepository repo;
	
	@Override
	public void saveData(Student st) {
		repo.save(st);
	}

	@Override
	public Iterable getAllData() {
		return  repo.findAll();
	}

	@Override
	public List<Student> getSingledata(int user, String pass) {
		return  repo.findAllByRollNoAndName(user, pass);
	}

	@Override
	public void deleteData(int rollno) {
		repo.deleteById(rollno);
	}

	@Override
	public Student getSingleStudent(int id) {
		// TODO Auto-generated method stub
		return repo.findAllByRollNo(id);
	}


}
