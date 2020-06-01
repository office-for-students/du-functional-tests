import behave_webdriver
from behave_webdriver.steps import *
from webdriver_manager.chrome import ChromeDriverManager


def before_all(context):
    context.behave_driver = behave_webdriver.Chrome(ChromeDriverManager().install())
    context.behave_driver.implicitly_wait(3)


def after_all(context):
    # cleanup after tests run
    context.behave_driver.quit()
