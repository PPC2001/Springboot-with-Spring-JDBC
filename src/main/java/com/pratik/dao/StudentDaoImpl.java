package com.pratik.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.pratik.dto.Student;

@Repository
public class StudentDaoImpl implements StudentDao {

	@Autowired
	JdbcTemplate jdbcTemplate;

	@Override
	public String add(Student std) {
		String status = "";
		Student student = search(std.getSid());
		if (student == null) {
			int rowCount = jdbcTemplate.update("INSERT INTO student (SID, SNAME, SADDR) VALUES (?, ?, ?)", std.getSid(),
					std.getSname(), std.getSaddr());
			if (rowCount == 1) {
				status = "success";
			} else {
				status = "failure";
			}
		} else {
			status = "existed";
		}
		return status;
	}

	@Override
	public Student search(String sid) {
		Student std = null;
		@SuppressWarnings("deprecation")
		List<Object> studentsList = jdbcTemplate.query("SELECT * FROM student WHERE SID = ?", new Object[] { sid },
				(rs, rowNum) -> {
					Student s = new Student();
					s.setSid(rs.getString("SID"));
					s.setSname(rs.getString("SNAME"));
					s.setSaddr(rs.getString("SADDR"));
					return s;
				});
		if (studentsList.isEmpty() == true) {
			std = null;
		} else {
			std = (Student) studentsList.get(0);
		}
		return std;
	}

	@Override
	public String update(Student std) {
		String status = "";

		int rowCount = jdbcTemplate.update("UPDATE student SET SNAME = ?, SADDR = ? WHERE SID = ?", std.getSname(),
				std.getSaddr(), std.getSid());
		if (rowCount == 1) {
			status = "success";
		} else {
			status = "failure";
		}
		return status;
	}

	@Override
	public String delete(String sid) {
		String status = "";
		Student std = search(sid);
		if (std == null) {
			status = "notexisted";
		} else {
			int rowCount = jdbcTemplate.update("DELETE FROM student WHERE SID = ?", sid);
			if (rowCount == 1) {
				status = "success";
			} else {
				status = "failure";
			}
		}
		return status;
	}
}
