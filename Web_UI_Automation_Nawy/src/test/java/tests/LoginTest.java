package tests;

import base.TestBase;
import data.TestData;
import org.testng.Assert;
import org.testng.annotations.Test;
import pages.LoginPage;

public class LoginTest extends TestBase {

    @Test(dataProvider = "LoginData", dataProviderClass = TestData.class)
    public void testLogin(String username, String password) {
        LoginPage loginPage = new LoginPage(driver);
        loginPage.navigateToLogin();
        loginPage.login(username, password);
        Assert.assertTrue(loginPage.isLoginSuccessful(username));
    }

    @Test(dataProvider = "LoginData", dataProviderClass = TestData.class)
    public void testLogout(String username, String password) {
        LoginPage loginPage = new LoginPage(driver);
        loginPage.navigateToLogin();
        loginPage.login(username, password);
        Assert.assertTrue(loginPage.isLoginSuccessful(username));
        loginPage.logout();
        Assert.assertTrue(loginPage.isLogoutSuccessful());
    }
}
