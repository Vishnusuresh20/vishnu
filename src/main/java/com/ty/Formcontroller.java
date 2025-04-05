package com.ty;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Formcontroller {
	@RequestMapping("/form")
	public String show() {
		return "form";
	}

	@RequestMapping(value = "/handle", method = RequestMethod.POST)
	public String handleForm(@ModelAttribute Student student,BindingResult result) {
		if(result.hasErrors()) {
			System.out.println(result);
			return "form";
		}
		return "handle";
	}

}
