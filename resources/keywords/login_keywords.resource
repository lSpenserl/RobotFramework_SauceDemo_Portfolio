*** Settings ***
Library    SeleniumLibrary
Resource    ../locators/login_locators.resource

*** Keywords ***

Abrir SauceDemo
    Open Browser    https://www.saucedemo.com/    chrome
    Maximize Browser Window

Informar Usuario
    [Arguments]    ${usuario}
    Input Text    ${USERNAME_INPUT}    ${usuario}

Informar Senha
    [Arguments]    ${senha}
    Input Text    ${PASSWORD_INPUT}    ${senha}

Clicar Login
    Click Element    ${LOGIN_BUTTON}

Validar Login Realizado
    Wait Until Element Is Visible    ${PRODUCTS_TITLE}    10s

Validar Erro De Login
    Wait Until Element Is Visible    ${LOGIN_ERROR_MESSAGE}    10s