import time

from SeleniumLibrary import SeleniumLibrary
from SeleniumLibrary.base import keyword
from SeleniumLibrary.errors import ElementNotFound


class ExtendedSeleniumLibrary(SeleniumLibrary):
    """
    Class extends regular SeleniumLibrary with extra keyword
    """

    @keyword(name="Wait For Element Exist")
    def wait_for_element_exist(self, locator, timeout=5, polling=0.1):
        end_time = time.time() + timeout
        while time.time() < end_time:
            try:
                self.find_element(locator)
                return
            except ElementNotFound:
                time.sleep(polling)
        raise AssertionError(f'Element is not found {locator}')