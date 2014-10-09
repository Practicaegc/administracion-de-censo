/* CustomerController.java
 *
 * Copyright (C) 2013 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 * 
 */

package controllers;


import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import services.CensusService;

import domain.Census;

@Controller
@RequestMapping("/census")
public class CensusController extends AbstractController {

	
	@Autowired
	private CensusService censusService;
	// Constructors -----------------------------------------------------------

	public CensusController() {
		super();
	}

	// Create census ---------------------------------------------------------------		

	@RequestMapping("/create")
	public ModelAndView action1() {
		ModelAndView result;
		Census  c = censusService.create();
		result = createEditModelAndView(c);

		return result;
	}
	
	
	
	
	// Details ----------------------------------------------------------------
		@RequestMapping(value = "/details", method = RequestMethod.GET)
		public ModelAndView display(@RequestParam int censusId) {
			ModelAndView result;
			Census census= censusService.findOne(censusId);
			result=createEditModelAndView(census);

			return result;
		}
		

	//Save
	
	@RequestMapping(value = "/edit", method = RequestMethod.POST, params = "save")
	public ModelAndView save(@Valid Census census, BindingResult binding) {
		ModelAndView result;

		if (binding.hasErrors()) {
			result = createEditModelAndView(census);
		} else {
			try {
				censusService.save(census);
				result = new ModelAndView("welcome/index");
			} catch (Throwable oops) {
				result = createEditModelAndView(census, "census.commit.error");				
			}
		}
		
		return result;
	}
	
	// Ancillary methods ------------------------------------------------------
	
	protected ModelAndView createEditModelAndView(Census census) {
		ModelAndView result;

		result = createEditModelAndView(census, null);
		
		return result;
	}	
	
	protected ModelAndView createEditModelAndView(Census census, String message) {
		ModelAndView result = new ModelAndView("census/create");
		
		
		result.addObject("census", census);
		result.addObject("message", message); //esta definida en el layout, no en la vista edit
		
		return result;

	}
	
}