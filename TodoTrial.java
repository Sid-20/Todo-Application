package com.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.servlet.http.HttpServletRequest;

@Entity
public class TodoTrial {
@Id
private String todoID;
@Column(name="Title")
private String todoTitle;
@Column(name="Content")
private String todoContent;


@Column(name="Date")
private Date todoDate;
@ManyToOne
private UserTrial u1;
public TodoTrial(String todoID, String todoTitle, String todoContent, Date todoDate, UserTrial u1) {
super();
this.todoID = todoID;
this.todoTitle = todoTitle;
this.todoContent = todoContent;
this.todoDate = todoDate;
this.u1 = u1;
}
public TodoTrial() {
super();
}
public void setTodoID(String todoID)
{
this.todoID=todoID;
}
public String getTodoID() {
return todoID;
}
public String getTodoTitle() {
return todoTitle;
}
public void setTodoTitle(String todoTitle) {
this.todoTitle = todoTitle;
}
public String getTodoContent() {
return todoContent;
}
public void setTodoContent(String todoContent) {
this.todoContent = todoContent;
}
public Date getTodoDate() {
return todoDate;
}
public void setTodoDate(Date todoDate) {
this.todoDate = todoDate;
}
public void setU1(UserTrial u1) {
this.u1 = u1;
}
public UserTrial getU1() {
return u1;
}


}
