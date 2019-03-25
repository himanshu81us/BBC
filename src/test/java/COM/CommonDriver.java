package COM;

import io.github.bonigarcia.wdm.ChromeDriverManager;
import io.github.bonigarcia.wdm.FirefoxDriverManager;
import io.github.bonigarcia.wdm.InternetExplorerDriverManager;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.safari.SafariDriver;

public class CommonDriver {

    public static WebDriver driver;

    public void OpenBrowser() {

        String browser;
        browser = System.getProperty("browser");

        if (browser.equalsIgnoreCase("FireFox")) {

            FirefoxDriverManager.getInstance().setup();
            driver = new FirefoxDriver();
        }
        else if (browser.equalsIgnoreCase("CHROME")) {
            ChromeDriverManager.getInstance().setup();
            driver = new ChromeDriver();
        }
        else if (browser.equalsIgnoreCase("InternetExplorer")) {


            InternetExplorerDriverManager.getInstance().setup();
            driver = new InternetExplorerDriver();
        }
        else {

            driver = new SafariDriver();
        }
    }

    public void CloseBrowser() {

        CloseBrowser();
    }

}
