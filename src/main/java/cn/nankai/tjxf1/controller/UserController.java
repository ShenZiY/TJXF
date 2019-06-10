package cn.nankai.tjxf1.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.nankai.tjxf1.entity.User;
import cn.nankai.tjxf1.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userServivce;
	
	/*//正常访问login页面
	@RequestMapping("/login")
	public String login(){
		return "login";
	}*/
	
	//注册功能
	@RequestMapping("/signup")
	public String signup(User user,Model model,HttpServletRequest request,HttpServletResponse response) throws Exception{
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		if(userServivce.addUser(user)){
			//request.getSession().setAttribute("user", user);
			//out.print("<script language='JavaScript'>alert('注册成功! ');window.location.href='"+request.getContextPath()+"/login.jsp';</script>");
			//return "sectionElementshow";
			//return "redirect:/login.jsp";
			return "success3";
		}
		else{
			//out.print("<script language='JavaScript'>alert('注册失败! ');window.location.href='"+request.getContextPath()+"/login.jsp';</script>");
			//return "redirect:/login.jsp";
			return "fail";
		}
	}
	
	
	//表单提交过来的路径
	@RequestMapping("/checkLogin")
	public String checkLogin(User user,Model model,HttpServletRequest request,HttpServletResponse response) throws Exception{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		//调用service方法
		user = userServivce.checkLogin(user.getUsername(), user.getPassword());
		//若有user则添加到model里并且跳转到成功页面
		if(user != null){
			//model.addAttribute("user",user);
			request.getSession().setAttribute("user", user);
			request.getSession().setAttribute("loginflag", "success");
			return "main";
			//request.getRequestDispatcher("/WEB-INF/jsp/sectionElementshow.jsp").forward(request, response);
			
			
		}
		else{
			//out.print("<script language='JavaScript'>alert('用户名或密码错误！');</script>");
			request.getSession().setAttribute("loginflag", "fail");
			try {
		        Thread.sleep(1000);
		    } catch (InterruptedException e) {
		        e.printStackTrace();
		    }
			response.sendRedirect(request.getContextPath()+"/login2.jsp");
			return null;
		}
		
	}
	
	
	//用来判断用户名是否唯一
    @RequestMapping("/registerUserName")
   // @ResponseBody
    public void registerUserName(String username,Model model,HttpServletRequest request,HttpServletResponse response) throws IOException{
        //校验registerUserName方法传入的参数registerName是否为空
       /* if(StringUtils.isEmpty(registerName)){
            LOGGER.error("registerUserName方法的参数registerName是空的");
            request.setAttribute("error", "用户名不能为空!");
            System.out.println("error");
            //return LOGINNEW;//如果出现空指针异常，先让其跳回loginNew.jsp页面。
        }*/
        //Map<String,Object> resultMap = new HashMap<String, Object>();  
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
        boolean tOf = userServivce.registerNameOnly(username);
        /*if(tOf == true){
            resultMap.put("result", "success");
            return resultMap;
        }else{
            resultMap.put("result", "notsuccess");
            return resultMap;
        }
        */
		if(tOf == true){
			out.print("success");
		}
		else{
			out.print("fail");
			//out.print("<script language='JavaScript'>alert('用户名已存在! ');window.location.href='"+request.getContextPath()+"/regist.jsp';</script>");
			//return "redirect:/login.jsp";
		}
    }
    
    
	//测试超链接跳转到另一个页面是否可以取到session值
	@RequestMapping("/anotherpage")
	public String hrefpage(){
		
		return "anotherpage";
	}
	
	//注销方法
	@RequestMapping("/outLogin")
	public String outLogin(HttpSession session){
		//通过session.invalidata()方法来注销当前的session
		session.invalidate();
		return "redirect:/login.jsp";
	}
	@RequestMapping("/login")
	public void login(Model model,HttpServletRequest request,HttpServletResponse response) throws IOException{
		response.sendRedirect(request.getContextPath()+"/login.jsp");
	}
	
}
