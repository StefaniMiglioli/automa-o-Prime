*** Settings ***
Documentation        Aqui estarão presentes todas as keywords dos testes Mobile.

Resource             ../package.robot

*** Keywords ***
Dado que o cliente esteja na tela de Home​
    Wait Until Element Is Visible        xpath=//*[contains(@text, 'Início')]
    Wait Until Element Is Visible        accessibility_id=YouTube

E pesquise um vídeo sobre "${PESQUISA}"​
    Click Element                        accessibility_id=Pesquisar
    Input Text                           id=search_edit_text            ${PESQUISA}
    Press Keycode                        66

E acessar o canal da Prime​
    Wait Until Element Is Visible        accessibility_id=Prime Experts - Parceria entre Prime Control e UniBrasil - 3 minutos e 38 segundos - Ir ao canal - Prime Control - 58 visualizações - há 1 ano - assistir o vídeo
    Click Element                        accessibility_id=Prime Experts - Parceria entre Prime Control e UniBrasil - 3 minutos e 38 segundos - Ir ao canal - Prime Control - 58 visualizações - há 1 ano - assistir o vídeo

Quando clicar em Inscrever-se​
    Click Element                        accessibility_id=Inscreva-se em Prime Control.
    Click Element                        accessibility_id=Inscreva-se em Prime Control.

Então será apresentado como Inscrito​
    Wait Until Element Is Visible        accessibility_id=Cancelar inscrição de Prime Control.