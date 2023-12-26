*** Settings ***
Resource    ../resources/buger-eats.resource

*** Test Cases ***
Cadastro de novo entregador Buger Eats
    Abrir o navegador
    Ir para o site Buger Eats
    Abrir tela de cadastro de entregador
    Preencher dados do novo entregador e cadastrar