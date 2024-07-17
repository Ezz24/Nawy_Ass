package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

public class ProductPage {
    private WebDriver driver;
    private WebDriverWait wait;

    private By monitorsCategory = By.xpath("//a[@id='itemc' and text()='Monitors']");
    private By appleMonitorLink = By.xpath("//a[@href='prod.html?idp_=10']");
    private By addToCartButton = By.xpath("//a[@onclick='addToCart(10)' and @class='btn btn-success btn-lg']");

    public ProductPage(WebDriver driver) {
        this.driver = driver;
        this.wait = new WebDriverWait(driver, Duration.ofSeconds(10));
    }

    public void navigateToMonitors() {
        wait.until(ExpectedConditions.elementToBeClickable(monitorsCategory)).click();
    }

    public void selectAppleMonitor() {
        wait.until(ExpectedConditions.visibilityOfElementLocated(appleMonitorLink)).click();
    }

    public void addToCart() {
        wait.until(ExpectedConditions.elementToBeClickable(addToCartButton)).click();
        wait.until(ExpectedConditions.alertIsPresent()).accept();
    }

    public boolean isProductAdded() {
        String alertText = wait.until(ExpectedConditions.alertIsPresent()).getText();
        driver.switchTo().alert().accept();
        return alertText.contains("Product added");
    }
}
