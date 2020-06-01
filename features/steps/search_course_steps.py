from behave_webdriver.steps import *

study_mode_filters = {"Full time": 4, "Part time": 5, "Distance learning": 6}
placement_filters = {"With placement year": 0}

@when('I select Study Mode filter with text "{text}"')
def select_study_mode_filter_with_text(context, text):
    elem_list = context.behave_driver.find_elements_by_class_name("filters-block__filter-checkbox-label")
    elem_list[study_mode_filters[text]].click()

@when('I select Placement filter with text "{text}"')
def select_placement_filter_with_text(context, text):  
    elem_list = context.behave_driver.find_elements_by_class_name("filters-block__filter-radio-label")
    elem_list[placement_filters[text]].click()
