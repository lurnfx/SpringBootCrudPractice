package com.main.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.main.model.User;

@Repository
public interface CjcRepository  extends CrudRepository<User, Integer>{

}
