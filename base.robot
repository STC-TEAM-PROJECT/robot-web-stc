*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary

Resource    ../robot-web-stc/tests/integration-test/keywords/usuarios/Usuarioskw.robot


*** Variables ***
${URL_LOCAL}                            http://localhost:3000
${URL_DEV}                              https://front.serverest.dev
${IMAGE_SERVEREST}                      //img[contains(@class,'imagem')]



*** Keywords ***
Access chrome browser
    Open Browser                            about:blank                 chrome
    Maximize Browser Window     
    Go To                                   ${URL_DEV}
    Wait Until Element is Visible           ${IMAGE_SERVEREST}