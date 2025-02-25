package com.service;

import java.util.List;

import com.model.Student;

public interface StuServiceInterface {

	void ServiceRegisterStudent(Student student);

	List<Student> ServicegetAllStudent();

	Student ServicegetSingleStudent(int id);

	List<Student> ServicedeleteStudent(int id);

	Student ServiceeditStudent(int id);

	List<Student> ServiceupdateStudent(Student stu);

}
