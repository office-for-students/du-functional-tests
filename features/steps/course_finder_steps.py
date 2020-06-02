from behave_webdriver.steps import *
from selenium.webdriver import ActionChains

@when('I click on the element "{element}" with offset {x_offset},{y_offset}')
def click_on_the_element_with_offset(context, element, x_offset, y_offset):
    element = context.behave_driver.find_element_by_class_name(element[1:])
    ActionChains(context.behave_driver).move_to_element(element).move_by_offset(x_offset, y_offset).click().perform()
