package edu.asu.functionaltests.core;

import org.junit.runner.RunWith;
import cucumber.api.CucumberOptions;
import cucumber.api.junit.*;

@RunWith(Cucumber.class)
@CucumberOptions(features={"src/test/resources/Resource does not require authentication.feature"}, glue="edu.asu.functionaltests.definition",plugin = {"html:target"})
public class Client {

}
