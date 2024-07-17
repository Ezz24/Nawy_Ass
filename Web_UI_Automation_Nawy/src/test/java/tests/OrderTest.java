package tests;

import base.TestBase;
import org.testng.Assert;
import org.testng.annotations.Test;
import pages.ProductPage;

public class OrderTest extends TestBase {

    @Test
    public void testCreateOrder() {
        ProductPage productPage = new ProductPage(driver);
        productPage.navigateToMonitors();
        productPage.selectAppleMonitor();
        productPage.addToCart();
        Assert.assertTrue(productPage.isProductAdded());
    }
}
