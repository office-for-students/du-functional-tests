from behave_webdriver.steps import *


@when('The cookies have been accepted')
def cookies_have_been_accepted(context):
    element_list = context.behave_driver.find_elements_by_class_name("cookie-banner__ok")
    if len(element_list) > 0:
        element_list[0].click()
