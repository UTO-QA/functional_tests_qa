package edu.asu.functionaltests.driver;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.phantomjs.PhantomJSDriver;


public class WebDriverFactory {

	private static WebDriver DRIVER;
    
	public static WebDriver getDriverInstance(String type) {
		
		switch(type) {
			case "HEADLESS":
				break;
			default:
					
		}
		return DRIVER;
		
	}
	
	
}
