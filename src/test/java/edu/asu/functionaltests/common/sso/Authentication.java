package edu.asu.functionaltests.common.sso;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.hamcrest.MatcherAssert;

import java.io.IOException;

import static junit.framework.TestCase.fail;

public class Authentication {


    String url;
    OkHttpClient clientWithRedirect = new OkHttpClient.Builder().addNetworkInterceptor(new Interceptor() {
        @Override
        public Response intercept(Chain chain) throws IOException {
            System.out.println("url: " + chain.request().url());
            return chain.proceed(chain.request());
        }
    })
            .build();;
    OkHttpClient clientWithoutRedirect = new OkHttpClient().newBuilder()
            .followRedirects(false)
            .followSslRedirects(false)
            .build();
    Request request;

    @Given("^User makes a request to the resource \"([^\"]*)\"$")
    public void user_makes_a_request_to_the_resource(String url) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        this.url = url;
        this.request = new Request.Builder().url(url).build();
        //throw new PendingException();
    }

    @Then("Expected resource (\\d+) is returned in the response")
    public void expected_resource_n_is_returned_in_the_response(int responseCode) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        //If the code becomes 302, then that means the resource needs some kind of authentication(eg. web login page)
        Response response=null;
        try{

            response = clientWithoutRedirect.newCall(request).execute();
            System.out.println(response.code());
            MatcherAssert.assertThat("Response Code must be "+responseCode+" but the response we found was "+response.code(),response.code()==responseCode);
        }
        catch (Exception e)
        {
            System.out.println(response.code());
            fail();
        }
    }

    @Then("^Redirected url must point to \"([^\"]*)\"$")
    public void redirected_url_must_point_to(String url) throws Throwable {
        Response response = null;
        try{
            response = clientWithRedirect.newCall(request).execute();
            System.out.println("Returned"+response.request().url());
            MatcherAssert.assertThat("Redirected url must point to "+url+" but the url we found was "+response.request().url(),response.request().url().toString().equals(url));
        }
        catch (Exception e)
        {
            System.out.println(response.code());
            fail();
        }
    }
}
