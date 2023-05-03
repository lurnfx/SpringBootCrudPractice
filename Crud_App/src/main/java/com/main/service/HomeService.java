package com.main.service;



import java.util.List;
import java.util.Optional;

import com.main.model.Student;

public interface HomeService {

	void saveData(Student st);

	Iterable getAllData();

	List<Student> getSingledata(int user, String pass);

	void deleteData(int rollno);

	Student  getSingleStudent(int rollno);

	

}
