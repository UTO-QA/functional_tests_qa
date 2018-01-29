package edu.asu.functionaltests.common.sso;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.hamcrest.MatcherAssert;

import static junit.framework.TestCase.fail;

public class Authentication {

    String url;
    OkHttpClient clientWithRedirect = new OkHttpClient();
    OkHttpClient clientWithoutRedirect = new OkHttpClient().newBuilder()
            .followRedirects(false)
            .followSslRedirects(false)
            .build();
    Request request;

    @Given("^Resource does not require authentication to \"([^\"]*)\"$")
    public void resource_does_not_require_authentication(String url) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        System.out.println("Resource doesn't require authentication");
       this.url = url;
        //throw new PendingException();
    }

    @When("User makes a request to the resource")
    public void user_makes_a_request_to_the_resource() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        request = new Request.Builder().url(url).build();
    }

    @Then("Expected resource is returned in the response")
    public void expected_resource_is_returned_in_the_response() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        //If the code becomes 302, then that means the resource needs some kind of authentication(eg. web login page)
        Response response=null;
        try{

            response = clientWithoutRedirect.newCall(request).execute();
            System.out.println(response.code());
            MatcherAssert.assertThat("Response Code must be 200",response.code()==200);
        }
        catch (Exception e)
        {
            System.out.println(response.code());
            fail();
        }
    }
}
