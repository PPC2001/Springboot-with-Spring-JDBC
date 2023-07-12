package com.pratik.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.pratik.dao.StudentDao;
import com.pratik.dto.Student;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	StudentDao studentDao;

	@Override
	public String addStudent(Student std) {
		String status = studentDao.add(std);
		return status;
	}

	@Override
	public Student searchStudent(String sid) {
		Student std = studentDao.search(sid);
		return std;
	}

	@Override
	public String updateStudent(Student std) {
		String status = studentDao.update(std);
		return status;
	}

	@Override
	public String deleteStudent(String sid) {
		String status = studentDao.delete(sid);
		return status;
	}

}
