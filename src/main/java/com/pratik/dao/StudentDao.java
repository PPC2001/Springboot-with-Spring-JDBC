package com.pratik.dao;
import com.pratik.dto.Student;

public interface StudentDao {
	public String add(Student std);

	public Student search(String sid);

	public String update(Student std);

	public String delete(String sid);
}