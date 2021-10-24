*** Settings ***
Documentation        Aqui estarão presentes todas as keywords dos testes Web.

Resource             ../package.robot

*** Keywords ***
Acessar a página home do site Automation Practice​
    Go To                               ${URL}
    Title Should Be                     ${HOME.TITLE_PAGE_HOME}
    Wait Until Element Is Visible       ${HOME.HEADER_OPTIONS}

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa​
    Go To                               ${URL}
    Title Should Be                     ${HOME.TITLE_PAGE_HOME}
    Wait Until Element Is Visible       ${HOME.HEADER_OPTIONS}
    Wait Until Element Is Visible       ${HOME.INPUT_BUSCA}
    Input Text                          ${HOME.INPUT_BUSCA}           ${PRODUTO} 

Clicar no botão pesquisar​
    Click Element                       ${HOME.BTN_PESQUISAR}

Conferir se o produto "${PRODUTO}" foi listado no site
    Page Should Contain Image           xpath=${HOME.IMG_BLOUSE}
    Title Should Be                     ${HOME.TITLE_PAGE_PESQUISA}

#Caso de Teste 02: Pesquisar produto não existente

Digitar o nome do produto "itemNãoExistente" no campo de pesquisa
    Wait Until Element Is Visible       ${HOME.INPUT_BUSCA} 
    Input Text                          ${HOME.INPUT_BUSCA}             itemNãoExistente
    Click button                        //*[@id="searchbox"]/button
    Wait Until Element Is Visible       //*[@id="center_column"]/p

#Caso de Teste 03: Listar Produtos
Passar o mouse por cima da categoria "Women" no menu principal superior de categorias    
    Mouse Over                          //*[@id="block_top_menu"]/ul/li[1]/a                       

Clicar na sub categoria "Summer Dresses"
    Click Element                       //*[@id="block_top_menu"]/ul/li[1]/ul/li[2]/ul/li[3]/a

Conferir se os produtos da sub-categoria "Summer Dresses" foram mostrados na página
    Wait Until Element Is Visible      //*[@id="center_column"]/h1/span[1]

Clicar em "Sign in"
    Wait Until Element Is Visible       //*[@id="header"]/div[2]/div/div/nav/div[1]/a
    Click Element                       //*[@id="header"]/div[2]/div/div/nav/div[1]/a

Informar um e-mail válido
    Input Text                          id=email_create     35@getnada.com         #EMAIL
    Click Element                       id=SubmitCreate

Preencher os dados obrigatórios
    Wait Until Element Is Visible       id=customer_firstname
    Click Element                       id=id_gender2
    Input Text                          id=customer_firstname     Junior
    Input Text                          id=customer_lastname      Lara
    Input Text                          id=passwd                 Abc1234
    Click Element                       id=days
    Click Element                       //*[@id="days"]/option[10]    
    Click Element                       id=months
    Click Element                       //*[@id="months"]/option[8]
    Click Element                       //*[@id="years"]/option[27]
    Input Text                          id=company               Prime Control       
    Input Text                          id=address1              Rua jose manoel
    Input Text                          id=city                  Curitiba-PR
    Click Element                       id=id_state  
    Click Element                       //*[@id="id_state"]/option[4]
    Input Text                          id=postcode              00000
    Input Text                          id=address2              Rua jose pedro
    Input Text                          id=other                 Analista de testes de software
    Input Text                          id=phone_mobile          41999999999
    Input Text                          id=phone                 4133333333

Submeter cadastro
    Click button                        id=submitAccount

Conferir se o cadastro foi efetuado com sucesso
    Click Element                       //*[@id="center_column"]/div/div[1]/ul/li[4]/a/span
    Wait Until Element Is Visible       //*[@id="center_column"]/div/form/fieldset/div[11]/button