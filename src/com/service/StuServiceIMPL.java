package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Dao.StuDaoInterface;
import com.model.Student;

@Service
public class StuServiceIMPL implements StuServiceInterface{

	@Autowired
	private StuDaoInterface dao;
	
	@Override
	public void ServiceRegisterStudent(Student student) {
		dao.DaoRegisterStudent(student);
		
	}

	@Override
	public List<Student> ServicegetAllStudent() {
		List<Student> liststu= dao.DaogetAllStudent();
		return liststu;
	}

	@Override
	public Student ServicegetSingleStudent(int id) {
		return dao.DaogetSingleStudent(id);
	}

	@Override
	public List<Student> ServicedeleteStudent(int id) {
		return dao.DaoDeleteStudent(id);
	}

	@Override
	public Student ServiceeditStudent(int id) {
		return dao.DaoEditStudent(id);
	}

	@Override
	public List<Student> ServiceupdateStudent(Student stu) {
		return dao.DaoUpdateStudent(stu);
	}


}
