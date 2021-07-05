package com.java.emp.dao;


import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.java.emp.model.Employee;

@Repository
public interface EmployeeDao extends CrudRepository<Employee, Integer> {

	/*
	 * @Query("update employee e set e.city=:city where e.id=:id") void update(int
	 * id, String city);
	 */

    /*@Query()
    Employee update(Employee emp);*/
}
