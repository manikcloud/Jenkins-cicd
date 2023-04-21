import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class JenkinsDemo {
    private static String Base_Url = "https://www.facebook.com";
    private WebDriver driver;

    @Before
    public void setUp() {
        driver = new ChromeDriver();
        driver.get(Base_Url);
    }

    @After
    public void after() {
        driver.quit();
    }

    @Test
    public void testCasePassed() {
        // Your test logic here
    }

    @Test
    public void testCaseFailed() {
        // Your test logic here
    }
}
