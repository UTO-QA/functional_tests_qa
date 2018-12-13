package edu.asu.functionaltests.common.sso;

import org.fluentlenium.core.domain.FluentWebElement;
import org.junit.Assert;
import java.util.List;

public class WebStandardAction extends WebStandardLocator {

    public void navigate(String url){
        goTo(url);
    }

    public void validateLogo(){
        Assert.assertTrue(logo.getAttribute("src").equals("https://www.asu.edu/asuthemes/4.6/assets/full_logo.png"));
        //logo.getElement().getCssValue()
    }

    public void verifyHeaderBackground(){
        Assert.assertTrue(find(".asu_hdr_white").size()!=0);
    }

    public boolean clickOnLinks(String name){
            boolean find = false;
            for (int i = 0;i<headerList().size();i++) {
            if(headerList().get(i).getText().contains(name)){
                    headerList().get(i).click();
                    find = true;
                }
            }
            return find;
    }

    public boolean verifySubMenu(String menuName, String[] subMenuList){
        List<FluentWebElement> dropDownList;
        boolean find = false;
        for (int i = 0;i<headerList().size();i++) {
            if(headerList().get(i).getText().contains(menuName)){
                dropDownList =  menu(i+1);
                for (int j = 0;j<dropDownList.size();j++){
                    find = false;
                    if(dropDownList.get(j).getAttribute("title").contains(subMenuList[i].trim()))
                        find = true;
                }
            }
        }
        return find;
    }

    public void navigateToMyAsu(){
        Assert.assertTrue(getDriver().getCurrentUrl().contains("https://weblogin.asu.edu/cas/login"));
        Assert.assertTrue(loginContainer.isDisplayed());
    }

    public void verifyNavigationToSchoolsAndCollege(){
        Assert.assertEquals(getDriver().getCurrentUrl(),"https://www.asu.edu/about/colleges-and-schools");

    }

}

