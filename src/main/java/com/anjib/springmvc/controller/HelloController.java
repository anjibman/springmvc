package com.anjib.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.anjib.springmvc.dto.Person;

@Controller
public class HelloController {
 
    @RequestMapping("/hello.htm")
    public ModelAndView helloWorld() {
        String message = "Hello World!!!";
        return new ModelAndView("hello", "message", message);
    }
    
    @RequestMapping("/helloJSON.htm")
    public @ResponseBody Person helloJSON() {
    	Person person = new Person();
    	person.setFirstName("Test");
    	person.setLastName("User");
    	return person;
    }
}