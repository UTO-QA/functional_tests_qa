package edu.asu.functionaltests.controller;

import org.junit.runner.RunWith;
import cucumber.api.CucumberOptions;
import cucumber.api.junit.*;

@RunWith(Cucumber.class)
@CucumberOptions(features="src/test/resources/common/sso/features/web_standards.feature", glue="edu.asu.functionaltests.common.sso", format = {"json:target/cucumber-report/cucumber.json"})
//@CucumberOptions(features={"src/test/resources/common/sso/Resource does not require authentication.feature", "src/test/resources/common/sso/Resource require authentication.feature"}, glue="edu.asu.functionaltests.common.sso",plugin = {"html:target"}, format = {
//"pretty", "json:C:/Users/bsampat5/Selenium_Reports/cucumber.json" })

public class Client {

}
