package edu.asu.functionaltests.driver;


import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.phantomjs.PhantomJSDriver;
import org.openqa.selenium.phantomjs.PhantomJSDriverService;
import org.openqa.selenium.remote.DesiredCapabilities;

import java.util.concurrent.TimeUnit;


public class WebDriverFactory {

	private static WebDriver DRIVER;
	private static String url = "https://webapp4.asu.edu/advsched/?acad_org=CENGLISH&confirmAnon=Y";
	private void WebDriverFactory()
	{

	}
	public static WebDriver getDriverInstance(String type) {

		switch(type) {
			case "HEADLESS":
				DesiredCapabilities caps = new DesiredCapabilities();
				caps.setJavascriptEnabled(true);
				caps.setCapability("takesScreenshot", true);
				caps.setCapability(
						PhantomJSDriverService.PHANTOMJS_EXECUTABLE_PATH_PROPERTY,
						"C:/Users/bsampat5/Documents/utils/phantomjs-2.1.1-windows/bin/phantomjs.exe"
				);
				DRIVER = new PhantomJSDriver(caps);
				break;
			case "FIREFOX":
				DRIVER  = new FirefoxDriver();
				break;
			default:
		}
		return DRIVER;

	}

	public static WebDriver getConn(String url)
	{
		DRIVER=getDriverInstance("HEADLESS");
		DRIVER.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
		DRIVER.manage().window().maximize();
		DRIVER.get(url);
		return DRIVER;
	}


}
