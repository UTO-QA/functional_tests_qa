package edu.asu.functionaltests.controller;

import org.junit.runner.RunWith;
import cucumber.api.CucumberOptions;
import cucumber.api.junit.*;

@RunWith(Cucumber.class)
@CucumberOptions(features={"src/test/resources/common/sso/Resource does not require authentication.feature"}, glue="edu.asu.functionaltests.common.sso",plugin = {"html:target"})
public class Client {

}
