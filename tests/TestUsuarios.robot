*** Settings ***
Resource                ../base.robot
Documentation           User test for users.

Test Setup              Access chrome browser
Test Teardown           Close Browser

*** Test Cases ***
Register fake user successfully
    Go page register user
    Register User