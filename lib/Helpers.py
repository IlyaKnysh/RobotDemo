from robot.api.deco import library, keyword
from robot.libraries.BuiltIn import BuiltIn


@library(scope="GLOBAL", auto_keywords=False)
class Helpers:
    @keyword("Do Regular Selenium Click")
    def do_regular_selenium_click(self, locator):
        """Method implements regular interaction with selenium driver.
        It's couldn't be declared in __init__ due to no context during class init"""

        driver = BuiltIn().get_library_instance('ExtendedSeleniumLibrary').driver
        driver.find_element(*locator.split(':', 1)).click()
