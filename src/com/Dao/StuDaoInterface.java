package com.Dao;

import java.util.List;

import com.model.Student;

public interface StuDaoInterface {

	void DaoRegisterStudent(Student student);

	List<Student> DaogetAllStudent();

	Student DaogetSingleStudent(int id);

	List<Student> DaoDeleteStudent(int id);

	Student DaoEditStudent(int id);

	List<Student> DaoUpdateStudent(Student stu);

}
