package com.entities;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import com.entities.TodoTrial;

@Entity
public class UserTrial {
@Id
private String uID;
@Column(name="UserName")
private String uname;
@Column(name="Password")
private String pass;

@OneToMany(mappedBy="u1")
private List<TodoTrial> tasks;

public List<TodoTrial> getTasks() {
return tasks;
}

public void setTasks(List<TodoTrial> tasks) {
this.tasks = tasks;
}

public String getuID() {
return uID;
}

public void setuID(String uID) {
this.uID = uID;
}

public String getUname() {
return uname;
}

public void setUname(String uname) {
this.uname = uname;
}

public String getPass() {
return pass;
}

public void setPass(String pass) {
this.pass = pass;
}

@Override
public String toString() {
return "UserTrial [uID=" + uID + ", uname=" + uname + ", pass=" + pass + ", tasks=" + tasks + "]";
}


}