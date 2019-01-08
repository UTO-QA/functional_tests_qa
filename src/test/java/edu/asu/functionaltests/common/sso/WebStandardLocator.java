package edu.asu.functionaltests.common.sso;

import org.fluentlenium.core.FluentPage;
import org.fluentlenium.core.domain.FluentWebElement;
import org.openqa.selenium.support.FindBy;

import java.util.List;

public class WebStandardLocator extends FluentPage {

    //region Header
    public List<FluentWebElement> headerList() {

        return find("#asu_nav_menu #asu_universal_nav ul:first-child>li");
    }

    @FindBy(css="#asu_logo a img")
    public FluentWebElement logo;

    @FindBy(css="#asu_logo a")
    public FluentWebElement asuLogo;

    @FindBy(css = ".asu_hdr_white")
    public FluentWebElement whiteHeader;

    public List<FluentWebElement> menu(int i){
        return find("#asu_nav_menu #asu_universal_nav ul:first-child>li:nth-of-type("+i+")>ul>li a");
    }

    @FindBy(css="#login_container")
    public FluentWebElement loginContainer;

    @FindBy(css = "#asu_search_module .asu_search_box")
    public FluentWebElement globalSearchBox;

    @FindBy(css=".results-table td")
    public FluentWebElement searchResults;

    @FindBy(css=".search-header")
    public FluentWebElement searchResultBar;

    @FindBy(css=".fa.fa-home")
    public FluentWebElement homeIcon;

    @FindBy(css=".btn.btn-gold")
    public FluentWebElement goldButton;

    @FindBy(css=".btn-programs")
    public FluentWebElement blueButton;

    public List<FluentWebElement> imagesOnAsuEdu(){
        return find(".field-item span img");
    }

    public List<FluentWebElement> tabsOnAsuEdu(){
        return find(".block-tb-megamenu .tb-megamenu-main-menu .tb-megamenu-nav>li a");
    }
    //endregion

    //region Global Footer
    @FindBy(css="#innovation-footer")
    public FluentWebElement globalFooter;

    @FindBy(id ="#innovation-bar")
    public FluentWebElement innovationBar;

    @FindBy(className =".innovation-top")
    public FluentWebElement innovationTop;

    @FindBy(className =".innovation-status a span")
    public FluentWebElement innovationStatus;

    @FindBy(className =".innovation-hidden a img")
    public FluentWebElement bestCollegesIcon;

    @FindBy (css = "#innovation-footer .footer-menu")
    public FluentWebElement footerMenu;

    public List<FluentWebElement> footerMenuList() {

        return find("#innovation-footer .footer-menu ul li a");
    }
    //endregion

    //region Super Footer
    @FindBy(id="page-footer")
    public FluentWebElement superFooter;
    //endregion

}

