package tests;

import base.TestBase;
import data.TestData;
import org.testng.Assert;
import org.testng.annotations.Test;
import pages.RegistrationPage;

public class RegistrationTest extends TestBase {

    @Test(dataProvider = "RegistrationData", dataProviderClass = TestData.class)
    public void testRegistration(String username, String password) {
        RegistrationPage registrationPage = new RegistrationPage(driver);
        registrationPage.navigateToRegistration();
        registrationPage.register(username, password);
        Assert.assertTrue(registrationPage.isRegistrationSuccessful());
    }
}
