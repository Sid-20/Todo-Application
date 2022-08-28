package com.entities;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

@Component
public class UserTrialDAO {
@Autowired
HibernateTemplate hibernateTemplate;
TodoTrailDAO dao;
@Transactional
public void addUser(UserTrial u1)
{
hibernateTemplate.save(u1);
System.out.println("User Added Successfully");
}
public UserTrial getUser(String uID)
{
return hibernateTemplate.get(UserTrial.class,uID);
}
@Transactional
public void deleteUser(String uID)
{
UserTrial u1=hibernateTemplate.get(UserTrial.class, uID);
hibernateTemplate.delete(u1);
}
@Transactional
public void changePassword(String uID,String pass)
{
UserTrial u1=hibernateTemplate.load(UserTrial.class, uID);
u1.setPass(pass);
System.out.println("Password Updated Successfully");
}
@Transactional
public void changeName(String uID,String name)
{
UserTrial u1=hibernateTemplate.load(UserTrial.class, uID);
u1.setUname(name);
System.out.println("Name Updated Successfully");
}

}
