package co.grandcircus.consume.an.API.lab;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ConsumeController {
	
	@Autowired
	private ApiService apiService;
	
	@RequestMapping("/")
	public ModelAndView home() {
		//System.out.println(apiService.getTinyList());
		
		return new ModelAndView("home", "inventors", apiService.getTinyList());
		
	}
	
	@RequestMapping("/complete") 
	public ModelAndView showComplete() {
		//System.out.println(apiService.getCompleteList());
		
		return new ModelAndView("complete", "innovators", apiService.getCompleteList());
	}
	

}//class
