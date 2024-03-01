import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.chrome.ChromeOptions;

public class SeleniumJavaDemo {

 public static void main(String[] args){
    // System.setProperty("webdriver.chrome.driver", "/usr/bin/chromedriver");
    ChromeOptions options = new ChromeOptions();

    options.addArguments("--remote-allow-origins=*");
    WebDriver driver = new ChromeDriver(options);
    // WebDriver driver = new FirefoxDriver();

    // Open Google
    driver.get("https://google.com");

    // Close browser
    driver.quit();
  }
}