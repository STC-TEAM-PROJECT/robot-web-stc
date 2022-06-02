*** Settings ***
Resource        ../user_base.robot
Resource        ../../home/home_base.robot

*** Keywords ***
Go Page Register User
    [Documentation]                          Used to go to user registration page.

    Click Link                               ${btn_cadastre-se} 
    Wait until Element Is Visible            ${label_cadastro}


Register User
    [Documentation]                          Used to register users.
    
    ${NOMEFAKE}                              FakerLibrary.Name
    ${EMAILFAKE}                             FakerLibrary.Email
    ${PASSWORDFAKE}                          FakerLibrary.Password

    Input Text                               id=${cadastro_nome}         ${NOMEFAKE}   
    Input Text                               id=${cadastro_email}        ${EMAILFAKE}
    Input Text                               id=${cadastro_password}     ${PASSWORDFAKE}
    Click Button                             ${btn_cadastrar}
    Wait until Element Is Visible            ${btn_logout}               

    Set Global Variable                      ${NOMEFAKE} 
    Set Global Variable                      ${EMAILFAKE}
    Set Global Variable                      ${PASSWORDFAKE}