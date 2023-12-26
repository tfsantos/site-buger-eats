*** Settings ***
Resource    ../resources/buger-eats.resource

*** Test Cases ***
Cadastro de novo entregador Buger Eats
    Abrir o navegador
    Ir para o site Buger Eats
    Abrir tela de cadastro de entregador
    Clicar em Buscar CEP sem preencher o campo