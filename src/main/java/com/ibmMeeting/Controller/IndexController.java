package com.ibmMeeting.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	@RequestMapping("/")
	public String IndexPage() {
		
		return "/index";
	}

}
