from base_page import *

search_box = 'xpath://input[@placeholder="Search"]'
leftsidebar_options = 'xpath://a[contains(@class, "main-menu-item")]'
leftsidebar_option = 'xpath://a[contains(@class, "main-menu-item")and child::span[text()="${search_input}"]]'
