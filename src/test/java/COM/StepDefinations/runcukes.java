package COM.StepDefinations;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.experimental.categories.Category;
import org.junit.runner.RunWith;


@RunWith(Cucumber.class)

@CucumberOptions(features = "src/test/Resources", tags = "@End2End")


public class runcukes{

}