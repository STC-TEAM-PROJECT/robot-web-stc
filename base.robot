*** Settings ***
Library    RequestsLibrary
Library    FakerLibrary
Library    JsonValidator

*** Variables ***
${URL_LOCAL}                            http://localhost:3000
${URL_DEV}                              https://serverest.dev