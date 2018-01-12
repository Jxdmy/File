package online.qsx.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import online.qsx.entity.DefaultUser;
import online.qsx.entity.SimpleUser;

@Controller
@RequestMapping(value="user")
public class UserController {
	String mess = null;
    //http://localhost:8080/SpringMVCRegister/user/simple/register
    @GetMapping("{type}/register")
    public String registerPage(Model model, @PathVariable("type") String userType) {
        System.out.println("进入:" + userType + " 用户注册页面...");
        return userType + "Register";
    }
    //http://localhost:8080/SpringMVCRegister/user/simple
    @PostMapping("simple")  
    public String simpleUserRegister(@Valid @ModelAttribute SimpleUser simpleUser, BindingResult bindingResult,Model model) {
    	System.out.println(bindingResult.hasErrors());
    	System.out.println(bindingResult.getFieldError().getDefaultMessage());
        if(bindingResult.hasErrors()){  
            mess = bindingResult.getFieldError().getDefaultMessage();
            model.addAttribute("message", mess);
            return "simpleRegister";  
        }  
        return "registerSuccess";  
    }  
    
    @RequestMapping(value="default",method = RequestMethod.POST)
    public String defaultUserRegister(@Valid @ModelAttribute DefaultUser defaultUser, BindingResult bindingResult,Model model){
    	if(bindingResult.hasErrors()){  
    		mess = bindingResult.getFieldError().getDefaultMessage();
            model.addAttribute("message", mess);
            return "defaultRegister";   
        }  
        return "registerSuccess";  
    }  
    	
}
