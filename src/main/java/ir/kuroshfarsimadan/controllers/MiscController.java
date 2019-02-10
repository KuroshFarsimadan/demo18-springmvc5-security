package ir.kuroshfarsimadan.controllers;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ir.kuroshfarsimadan.service.MiscService;

@Controller
@RequestMapping(value = "misc")
public class MiscController {

	@Inject
	private MiscService miscService;

	public MiscService getMiscService() {
		return miscService;
	}

	public void setMiscService(MiscService miscService) {
		this.miscService = miscService;
	}

	@RequestMapping(value = "/admins", method = RequestMethod.GET)
	public String admins(Model model) {
		miscService.serviceForAdmin(); 
		model.addAttribute("message", "Extra page for admins");
		return "misc";
	}

	@RequestMapping(value = "/loggedin", method = RequestMethod.GET)
	public String loggedin(Model model) {
		miscService.serviceForLoggedInUsers(); 
		model.addAttribute("message", "Extra page for logged in users");
		return "misc";
	}

	@RequestMapping(value = "/all", method = RequestMethod.GET)
	public String all(Model model) {
		miscService.serviceForAll(); 
		model.addAttribute("message", "Extra page for everyone else");
		return "misc";
	}

}
