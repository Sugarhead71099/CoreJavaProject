package com.spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.mvc.model.UserModel;
import com.spring.mvc.service.UserService;

@Controller
public class UserController
{

	@Autowired
	UserService userService;

	public UserController(UserService userService)
	{
		this.userService = userService;
	}

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String registration(Model model)
    {
        model.addAttribute("userForm", new UserModel());

        return "register";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registration(@ModelAttribute("userForm") UserModel userForm, Model model) {

        userService.addUser(userForm);

        // securityService.autologin(userForm.getUsername(), userForm.getPasswordConfirm());

        return "redirect:/welcome";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(ModelAndView mav, String error, String logout) {
        if (error != null)
        {
            mav.addObject("error", "Your username and password is invalid.");
        }
        if (logout != null)
        {
            mav.addObject("info", "You have been logged out successfully.");
        }

        return "login";
    }

    @RequestMapping(value = {"/", "/welcome"}, method = RequestMethod.GET)
    public String welcome(Model model)
    {
        return "welcome";
    }
}
