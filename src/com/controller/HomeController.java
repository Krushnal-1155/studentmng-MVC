package com.controller;

import java.util.List; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.Student;
import com.service.StuServiceInterface;

@Controller
public class HomeController {
	@Autowired
	private StuServiceInterface ss;
	
	@RequestMapping(value="/register")
	public String RegisterEmployee(@ModelAttribute Student student) {
		ss.ServiceRegisterStudent(student);
		return "Login";
	}

	@RequestMapping(value="/log")
	public String getAllStudent(@RequestParam("rollNo") int id,@RequestParam("login") String login,@RequestParam("password") String ps,Model m) {
		List<Student> listStu =ss.ServicegetAllStudent();
		
		Student stu=ss.ServicegetSingleStudent(id);
		if ("admin".equals(login) && "admin".equals(ps)) {
            m.addAttribute("msg", listStu);
            return "adminDashboard";
        } else if (login.equals(stu.getMnumber()) || login.equals(stu.getEmail())) {
            if (ps.equals(stu.getPassword())) {
                m.addAttribute("msg", stu);
                return "success";
            } else {
                m.addAttribute("msg", "Invalid Password");
                return "Login";
            }
        } else {
            m.addAttribute("msg", "Invalid Username");
            return "Login";
        }
    }
	@RequestMapping(value = "/del")
	public String deleteStudent(@RequestParam("rollno") int id, Model m) {

		List<Student> listStu = ss.ServicedeleteStudent(id);

		m.addAttribute("msg", listStu);

		return "adminDashboard";
	}
	
	@RequestMapping(value = "/edit")
	public String editStudent(@RequestParam("rollno") int id, Model m) {

		Student stu = ss.ServiceeditStudent(id);

		m.addAttribute("student", stu);
		return "edit";
	}

	@RequestMapping(value = "/update")
	public String updateStudent(@ModelAttribute Student stu, Model m) {

		List<Student> stulist = ss.ServiceupdateStudent(stu);

		m.addAttribute("msg", stulist);
		return "adminDashboard";
	}

}