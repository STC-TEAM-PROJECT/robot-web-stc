*** Settings ***
Resource                ../../base.robot
Resource                ../pages/user/keyword/UsuariosKW.robot
Resource                ../resource.robot
Documentation           User test for users.

Test Setup              Access chrome browser
Test Teardown           Close Browser

*** Test Cases ***
Register fake user successfully
    Go Page Register User
    Register User