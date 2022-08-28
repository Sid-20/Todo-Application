package com.entities;

import com.entities.*;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

@Component
public class TodoTrailDAO {
@Autowired
HibernateTemplate hibernateTemplate;
@Transactional
public void addTask(TodoTrial t1)
{
hibernateTemplate.save(t1);
System.out.println("User and Task is added Successfully");
}
public List<TodoTrial> getAll(String uID)
{
List<TodoTrial> alltodos=this.hibernateTemplate.loadAll(TodoTrial.class);
List<TodoTrial> todos=new ArrayList<TodoTrial>();
for(TodoTrial t:alltodos)
{
if(t.getU1().getuID().equals(uID))
{
todos.add(t);
}
}
return todos;
}
@Transactional
public void deleteTask(int num)
{
hibernateTemplate.delete(hibernateTemplate.load(TodoTrial.class,num));
System.out.println("Task is deleted Successfully");
}

}
