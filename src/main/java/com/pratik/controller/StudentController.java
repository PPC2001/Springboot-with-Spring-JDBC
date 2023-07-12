package com.pratik.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.pratik.dto.Student;
import com.pratik.service.StudentService;



@Controller
@RequestMapping("/students")
public class StudentController {
	private static final Logger logger = LogManager.getLogger(StudentController.class);

	private final StudentService studentService;
	
	// constructor-based dependency injection to ensure better testability and encapsulation
	public StudentController(StudentService studentService) {
		this.studentService = studentService;
	}

	@GetMapping("/welcomepage")
	public String showWelcomePage() {
		logger.info("Welcome page accessed");
		return "welcome";
	}

	@GetMapping("/addform")
	public String showAddPage() {
		logger.info("Add form page accessed");
		return "addform";
	}

	@GetMapping("/searchform")
	public String showSearchPage() {
		logger.info("Search form page accessed");
		return "searchform";
	}

	@GetMapping("/updateform")
	public String showUpdatePage() {
		logger.info("Update form page accessed");
		return "updateform";
	}

	@GetMapping("/editform")
	public String showEditPage() {
		logger.info("Edit form page accessed");
		return "editform";
	}

	@GetMapping("/deleteform")
	public String showDeletePage() {
		logger.info("Delete form page accessed");
		return "deleteform";
	}

	@PostMapping("/add")
	public String add(ModelMap map, @RequestParam String sid, @RequestParam String sname, @RequestParam String saddr) {
		logger.info("Adding a student with SID: {}", sid);
		map.addAttribute("operation", "Student Insertion ");
		Student std = new Student();
		std.setSid(sid);
		std.setSname(sname);
		std.setSaddr(saddr);
		String status = studentService.addStudent(std);
		return status;
	}

	@PostMapping("/search")
	public String search(ModelMap map, @RequestParam String sid) {
		logger.info("Searching student with SID: {}", sid);
		String status = "";
		Student std = studentService.searchStudent(sid);
		if (std == null) {
			status = "notexisted";
		} else {
			map.addAttribute("std", std);
			status = "studentdetails";
		}
		return status;
	}

	@PostMapping("/editform")
	public String getEditForm(ModelMap map, @RequestParam String sid) {
		logger.info("Getting edit form for student with SID: {}", sid);
		String status = "";
		Student std = studentService.searchStudent(sid);
		if (std == null) {
			status = "notexisted";
		} else {
			map.addAttribute("std", std);
			status = "editform";
		}
		return status;
	}

	@PostMapping("/update")
	public String update(ModelMap map, @RequestParam String sid, @RequestParam String sname,
			@RequestParam String saddr) {
		logger.info("Updating student with SID: {}", sid);
		map.addAttribute("operation", "Student Updation ");
		Student std = new Student();
		std.setSid(sid);
		std.setSname(sname);
		std.setSaddr(saddr);

		String status = studentService.updateStudent(std);
		return status;
	}

	@PostMapping("/delete")
	public String delete(ModelMap map, @RequestParam String sid) {
		logger.info("Deleting student with SID: {}", sid);
		map.addAttribute("operation", "Student Deletion ");
		String status = studentService.deleteStudent(sid);
		return status;
	}
}
