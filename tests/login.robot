*** Settings ***
Resource    ../resources/keywords/login_keywords.resource

*** Test Cases ***

Login com sucesso
    Abrir SauceDemo
    Informar Usuario    standard_user
    Informar Senha    secret_sauce
    Clicar Login
    Validar Login Realizado
    Close Browser

Login com usuario bloqueado
    Abrir SauceDemo
    Informar Usuario    locked_out_user
    Informar Senha    secret_sauce
    Clicar Login
    Validar Erro De Login
    Close Browser