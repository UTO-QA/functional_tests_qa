package edu.asu.functionaltests.common.sso;

import org.fluentlenium.core.FluentPage;
import org.fluentlenium.core.domain.FluentWebElement;
import org.openqa.selenium.support.FindBy;

import java.util.List;

public class WebStandardLocator extends FluentPage {
    public List<FluentWebElement> headerList() {

        return find("#asu_nav_menu #asu_universal_nav ul:first-child>li");
    }

    @FindBy(css="#asu_logo a img")
    public FluentWebElement logo;

    @FindBy(css = ".asu_hdr_white")
    public FluentWebElement whiteHeader;

    public List<FluentWebElement> menu(int i){
        return find("#asu_nav_menu #asu_universal_nav ul:first-child>li:nth-of-type("+i+")>ul>li a");
    }

    @FindBy(css="#login_container")
    public FluentWebElement loginContainer;








}

