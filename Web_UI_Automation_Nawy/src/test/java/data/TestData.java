package data;

import org.testng.annotations.DataProvider;

import java.util.Random;

public class TestData {

    @DataProvider(name = "LoginData")
    public Object[][] getLoginData() {
        return new Object[][]{
                {"Mohamed Ezz", "12345"}
        };
    }

    @DataProvider(name = "RegistrationData")
    public Object[][] getRegistrationData() {
        Random random = new Random();
        String username = "ezz" + random.nextInt(1000);
        return new Object[][]{
                {username, "12345"}
        };
    }
}
