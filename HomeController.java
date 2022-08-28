package com.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entities.TodoTrial;
import com.entities.TodoTrailDAO;
import com.entities.UserTrial;
import com.entities.UserTrialDAO;

@Controller
public class HomeController {
UserTrial loginUser;
@Autowired
TodoTrailDAO dao;
@Autowired
UserTrialDAO uDAO;
@RequestMapping("goHome")
public String goHomePage()
{
return "home";
}
@RequestMapping("homeTodo")
public String homeTodo()
{
return "index";
}

@RequestMapping("homePage")
public String homePage()
{
return "home";
}
@RequestMapping("home")
public String home(Model m)
{
String str="home";
m.addAttribute("page",str);
List<TodoTrial> list=this.dao.getAll(loginUser.getuID());
m.addAttribute("todos", list);
return "home";
}
@RequestMapping("add")
public String addTask(Model m)
{
TodoTrial t=new TodoTrial();
m.addAttribute("page", "add");
m.addAttribute("todo", t);
return "home";
}
@PostMapping("saveTodo")
public String saveTodo(@ModelAttribute("todo")TodoTrial t, Model m)
{
System.out.println(t);
String str=t.getTodoID();
str=str.concat(loginUser.getuID());
t.setTodoID(str);
t.setTodoDate(new Date());
t.setU1(loginUser);
m.addAttribute("msg", "Successfully added");
dao.addTask(t);
return "home";
}
@GetMapping("deleteTask")
public String removeTask()
{
return "delete";
}
@RequestMapping("deleteTaskNumber")
public String deleteTask(HttpServletRequest req)
{
int n=Integer.parseInt(req.getParameter("n1"));
dao.deleteTask(n);
return "home";
}
@RequestMapping("newUser")
public String getPage()
{
return "newUser";
}
@PostMapping("userReg")
public String addUser(@ModelAttribute UserTrial u1,Model m)
{
uDAO.addUser(u1);
return "index";
}
@GetMapping("login")
public String userLogin(HttpServletRequest req,HttpServletResponse res)
{
String n=req.getParameter("uid");
String p=req.getParameter("pass");
loginUser=uDAO.getUser(n);
UserTrial u1=uDAO.getUser(n);
if(u1.getPass().equals(p)==true)
{
try {
res.sendRedirect("home");
} catch (IOException e) {
e.printStackTrace();
}
}
return "errorPage";
}
@RequestMapping("logout")
public String logout()
{
return "index";
}
@RequestMapping("deleteUser")
public String deleteUser()
{
return "deleteUser";
}
@GetMapping("confirmDelete")
public String confirmUserDelete(HttpServletRequest req)
{
String uID=req.getParameter("uID");
System.out.println(uID);
uDAO.deleteUser(uID);
System.out.println("User is deleted");
return "index";
}
@RequestMapping("changePass")
public String changePass()
{
return "forgetPass";
}
@PostMapping("checkID")
public String resetPass(HttpServletRequest req,HttpServletResponse res)
{
String uid=req.getParameter("uID");
String pass1=req.getParameter("pass");
if(uDAO.getUser(uid)!=null)
{
uDAO.changePassword(uid, pass1);
return "index";
}
return "errorPage";
}
@PostMapping("checkIDName")
public String resetName(HttpServletRequest req,HttpServletResponse res)
{
String uid=req.getParameter("uID");
String name=req.getParameter("uname");
if(uDAO.getUser(uid)!=null)
{
uDAO.changeName(uid, name);
return "home";
}
return "errorPage";
}
@RequestMapping("changeName")
public String changeName()
{
return "name";
}
}