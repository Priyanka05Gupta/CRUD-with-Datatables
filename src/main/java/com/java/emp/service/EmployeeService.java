package com.java.emp.service;

import com.java.emp.model.Employee;

import java.util.List;
import java.util.Optional;

public interface EmployeeService {

    List<Employee> findAll();

    Optional<Employee> findById(Integer id);

    void create(Employee emp);

	void update(Employee emp);

	void deleteById(Integer id);
}
