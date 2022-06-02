*** Variable ***
${IMAGE_SERVEREST}                      //img[contains(@class,'imagem')]

*** Keywords ***
Access chrome browser
    Open Browser                            about:blank                 chrome
    Maximize Browser Window     
    Go To                                   ${URL_DEV}
    Wait Until Element is Visible           ${IMAGE_SERVEREST}