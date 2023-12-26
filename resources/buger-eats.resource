*** Settings ***
Library    Browser
Library    FakerLibrary

*** Variables ***
${BROWSER}             chromium
${HEADLESS}            ${false}
${SITE_BUGER_EATS}     https://buger-eats.vercel.app/
${FILE}                arquivoCNH/CNH.png

*** Keywords ***
Abrir o navegador
    New Browser    browser=${BROWSER}
    ...            headless=${HEADLESS}
    
    New Context    viewport={'width': 1200, 'height': 800}

Ir para o site Buger Eats
    New Page       url=${SITE_BUGER_EATS}
    ${title}       Get Title  ==  Buger Eats
    Log            ${title}

Abrir tela de cadastro de entregador
    Click          text="Cadastre-se para fazer entregas"
    
Preencher dados do novo entregador e cadastrar
    ${EMAIL}       FakerLibrary.Email
    Fill Text      css=input[name='name']             Taís Santos
    Fill Text      css=input[name='cpf']              04513364025
    Fill Text      css=input[name='email']            ${EMAIL}
    Fill Text      css=input[name='postalcode']       09090-502
    Click          text="Buscar CEP"
    Fill Text      css=input[name='address-number']   215
    Fill Text      css=input[name='address-details']  Apto 1012
    Click          text="Bicicleta"
    Upload File By Selector    //input[@type='file']    ${FILE}
    Click          text="Cadastre-se para fazer entregas"
    Sleep    5s


Clicar em Buscar CEP sem preencher o campo
    Click          text="Buscar CEP"
    Get Text       span[class='alert-error']  ==  Informe um CEP válido


