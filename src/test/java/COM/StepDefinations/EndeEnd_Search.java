package COM.StepDefinations;

import COM.CommonDriver;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static org.junit.Assert.assertEquals;


public class EndeEnd_Search extends CommonDriver {
    @Given("^i enter url as \"([^\"]*)\"$")
    public void iEnterUrlAs(String url) throws Throwable {

        System.out.println(url);
        OpenBrowser();
        driver.get(url);
        driver.manage().window().maximize();


    }

    @When("^i click on More button$")
    public void iClickOnMoreButton() {
        driver.findElement(By.xpath("//*[@id=\"orb-nav-more\"]/a")).click();
    }

    @When("^i click on TV button$")
    public void iClickOnTVButton() {
        driver.findElement(By.xpath("//*[@id=\"orb-panel-more\"]/div/ul/li[17]/a")).click();
    }

    @Then("^i shoud see url as \"([^\"]*)\"$")
    public void iShoudSeeUrlAs(String ExpectedUrl) throws Throwable {

        String actual_url;
        actual_url = driver.getCurrentUrl();
        assertEquals(ExpectedUrl, actual_url);


    }

    @When("^i click on Channels Button$")
    public void iClickOnChannelsButton() {
        driver.findElement(By.xpath("//*[@id=\"main\"]/nav/div/ul/li[1]/button/span")).click();
    }

    @When("^i click on ONE button$")
    public void iClickOnONEButton() {
        driver.findElement(By.xpath("//*[@id=\"main\"]/nav/div/ul/li[1]/div/div/div/nav/ul/li[1]/a")).click();
    }

    @Then("^i should see url as \"([^\"]*)\"$")
    public void iShouldSeeUrlAs(String expected_url) throws Throwable {
        String actualUrl;
        actualUrl = driver.getCurrentUrl();
        assertEquals(expected_url, actualUrl);

    }

    @When("^i click on EastEnders image$")
    public void iClickOnEastEndersImage() {
        driver.findElement(By.xpath("//*[@id=\"main\"]/div[2]/div[2]/div[1]/section[1]/div/div[2]/div/div/ul/li[1]/div/a")).click();
    }


    @And("^i click on Programme website link$")
    public void iClickOnProgrammeWebsiteLink() {
        driver.findElement(By.xpath("//*[@id=\"main\"]/aside/ul/li[1]/a/span")).click();
    }

    @Then("^i should see EastEnders page title$")
    public void iShouldSeeEastEndersPageTitle() {
        String ActualPageTitle;
        String ExpectedPageTitle = "EastEnders";
        ActualPageTitle = driver.findElement(By.xpath("//*[@id=\"br-masthead\"]/div/div[1]/div/a")).getText();
        assertEquals(ExpectedPageTitle, ActualPageTitle);

    }


    @When("^i click on Upcoming Episodes$")
    public void iClickOnUpcomingEpisodes() {
        driver.findElement(By.className("gel-pica-bold")).click();
    }



}
