package com.Dao;

import java.util.List; 

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Student;

@Repository
public class StuDaoIMPL implements StuDaoInterface{

	@Autowired
	private SessionFactory sf;
	
	@Override
	public void DaoRegisterStudent(Student student) {
		Session s =sf.openSession();
		s.save(student);
		s.beginTransaction().commit();
		
	}

	@Override
	public List<Student> DaogetAllStudent() {
		Session s = sf.openSession();
		Query<Student> query = s.createQuery("from Student");
		List<Student> listStudent = query.getResultList();

		return listStudent;
	}

	@Override
	public Student DaogetSingleStudent(int id) {
		Session s = sf.openSession();
		return s.get(Student.class, id);
	}

	@Override
	public List<Student> DaoDeleteStudent(int id) {
		Session s = sf.openSession();
		Student stu = s.get(Student.class, id);
		s.delete(stu);
		s.beginTransaction().commit();

		Query<Student> query = s.createQuery("from Student");
		List<Student> listStudent = query.getResultList();

		return listStudent;

	}

	@Override
	public Student DaoEditStudent(int id) {
		Session s = sf.openSession();
		Student stu = s.get(Student.class, id);

		return stu;
	}

	@Override
	public List<Student> DaoUpdateStudent(Student stu) {
		Session s = sf.openSession();
		s.update(stu);
		s.beginTransaction().commit();

		Query<Student> query = s.createQuery("from Student");
		List<Student> listEmployee = query.getResultList();

		return listEmployee;
	}

}
