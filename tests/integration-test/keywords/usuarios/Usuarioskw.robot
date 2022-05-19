*** Keywords ***
Go page register user
    [Documentation]        Used to go to user registration page.

    Click Link                               //a[contains(.,'Cadastre-se')]
    Wait until Element Is Visible            //h2[contains(.,'Cadastro')]


Register User
    [Documentation]        Used to register users.
    
    ${NOMEFAKE}                             FakerLibrary.Name
    ${EMAILFAKE}                            FakerLibrary.Email
    ${PASSWORDFAKE}                         FakerLibrary.Password

    Input Text                              id=nome                                 ${NOMEFAKE}   
    Input Text                              id=email                                ${EMAILFAKE}
    Input Text                              id=password                             ${PASSWORDFAKE}
    Click Button                            //button[contains(.,'Cadastrar')]
    Wait until Element Is Visible           //button[contains(.,'Logout')]    