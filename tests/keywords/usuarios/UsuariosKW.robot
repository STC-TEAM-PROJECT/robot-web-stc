*** Settings ***
Resource        ../../commons/usuarios.robot

*** Keywords ***
Go Page Register User
    [Documentation]                          Used to go to user registration page.

    Click Link                               //a[contains(.,'Cadastre-se')]
    Wait until Element Is Visible            //h2[contains(.,'Cadastro')]


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