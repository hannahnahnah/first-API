package co.grandcircus.consume.an.API.lab;

import java.util.Comparator;
import java.util.List;

import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.http.HttpHeaders;
import org.springframework.http.client.ClientHttpRequestInterceptor;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import co.grandcircus.consume.an.API.lab.model.Complete;
import co.grandcircus.consume.an.API.lab.model.HallOfFameResponse;
import co.grandcircus.consume.an.API.lab.model.Tiny;

@Component
public class ApiService {
	
	private RestTemplate restTemplate;
	
	{
	    // This configures the restTemplateWithUserAgent to include a User-Agent header with every HTTP
		// request. Some of the APIs in this demo have a bug where User-Agent is required.
		ClientHttpRequestInterceptor interceptor = (request, body, execution) -> {
	        request.getHeaders().add(HttpHeaders.USER_AGENT, "Spring");
	        return execution.execute(request, body);
	    };
	    restTemplate = new RestTemplateBuilder().additionalInterceptors(interceptor).build();
	}
	
	public List<Tiny> getTinyList() {
		String url = "https://dwolverton.github.io/fe-demo/data/computer-science-hall-of-fame.json";
		
		HallOfFameResponse tinyObjects = restTemplate.getForObject(url, HallOfFameResponse.class);
		List<Tiny> reorder = tinyObjects.getTiny();
		
		reorder.sort(Comparator.comparing(Tiny::getYear));
		return reorder;
		
		
		//return tinyObjects.getTiny();
	}
	
	public List<Complete> getCompleteList() {
		String url = "https://dwolverton.github.io/fe-demo/data/computer-science-hall-of-fame.json";
		
		HallOfFameResponse completeObjects = restTemplate.getForObject(url, HallOfFameResponse.class);
		List<Complete> reorder = completeObjects.getComplete();
		
		reorder.sort(Comparator.comparing(Complete::getYear));
		return reorder;
	}
	
	

}//class
