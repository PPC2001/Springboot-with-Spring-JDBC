package com.pratik.service;

import com.pratik.dto.Student;

public interface StudentService {
	public String addStudent(Student std);

	public Student searchStudent(String sid);

	public String updateStudent(Student std);

	public String deleteStudent(String sid);
}
