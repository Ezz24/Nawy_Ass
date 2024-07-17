# This project demonstrates a simple web UI automation framework using Selenium and TestNG for the website demoblaze.com: 

The framework is structured using the Page Object Model (POM) design pattern.

# Test Scenarios :
User Login:
Verifies that a user can log in with valid credentials.
User Logout:
Verifies that a logged-in user can log out and checks the presence of the login button after logout.
User Registration:
Verifies that a user can register with valid data and checks for the success alert.
Create Order for Apple Monitor 24:
Verifies that a user can add an Apple monitor 24 to the cart and checks for the success alert.

# Main Files :
TestBase.java: Sets up and tears down the Selenium WebDriver before and after tests.
TestData.java: Provides test data for login and registration tests using TestNG's @DataProvider.
LoginPage.java: Handles login and logout functionalities.
RegistrationPage.java: Handles user registration functionalities.
ProductPage.java: Handles product selection and adding to cart functionalities.
LoginTest.java: Contains tests for login and logout.
RegistrationTest.java: Contains tests for user registration.
OrderTest.java: Contains tests for creating an order.
