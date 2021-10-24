*** Settings ***
Documentation        Neste arquivo estarão presentes todos os exercícios de automação do curso Prime Hero.

*** Variable ***
# Minha primeira variável do tipo dicionário
&{PESSOA}        
...        nome=Helder    
...        sobrenome=Fernandes    
...        idade=28 anos    
...        cpf=12345678911    
...        profissao=analista de testes     
...        carro=Sentra

@{FRUTAS}    Banana    Abacaxi    Limão    Jabuticaba

*** Test Cases ***    
Cenario: Imprimindo 6 informações de uma pessoa
    Log To Console       ${PESSOA.nome}
    Log To Console       ${PESSOA.sobrenome}
    Log To Console       ${PESSOA.idade}
    Log To Console       ${PESSOA.cpf}
    Log To Console       ${PESSOA.profissao}
    Log To Console       ${PESSOA.carro}

Cenario: Imprimindo uma lista de frutas
    [Tags]               LISTA
    
    Log To Console       ${FRUTAS[0]}
    Log To Console       ${FRUTAS[3]}

Cenario: Somando dois numeros
    [Tags]                SOMAR
    Somar dois numeros    10    10
    ${RESULTADO}          Somar os numeros "654198" e "65465198"
    Log To Console        ${RESULTADO}

    ${EMAIL}              Criar email    helder    fernandes    28

Cenario: Contando de 0 a 9
    [Tags]        CONTAR
    FOR    ${COUNT}    IN RANGE    0    9
        Log To Console    ${COUNT}
    END

Cenario: Percorrendo lista de frutas
    [Tags]            PERCORRER
    Percorrer itens de uma lista

Cenario: Tomando decisões
    [Tags]            IF
    Tomar decisões

*** Keywords ***
Somar dois numeros
    [Arguments]    ${NUM_A}        ${NUM_B}
    ${SOMA}        Evaluate        ${NUM_A}+${NUM_B}
    [Return]       ${SOMA}

Somar os numeros "${NUM_A}" e "${NUM_B}"
    ${SOMA}        Evaluate        ${NUM_A}+${NUM_B}
    [Return]       ${SOMA}

Criar email
    [Arguments]        ${NOME}    ${SOBRENOME}    ${IDADE}
    ${email}         Evaluate       ${NOME}_${SOBRENOME}_${IDADE}@robot.com
    [Return]         ${email}

Contar de 0 a 9
    FOR    ${COUNT}    IN RANGE    0    9
        Log To Console    ${COUNT}
    END

Percorrer itens de uma lista
    @{FRUTAS}    Create List    Banana    Abacaxi    Limão
    FOR    ${FRUTA}    IN    @{FRUTAS}
        Log To Console       ${FRUTA}
    END

Imprimir paises
    @{PAISES}    Create List    Brasil      México    Holanda
    FOR    ${PAIS}    IN    @{PAISES}
        Log To Console    Estou no país ${PAIS}
    END

Tomar decisões
    FOR    ${COUNT}    IN RANGE    0    9
        IF    '${COUNT}'=='5'
            Log To Console   Estou no numero ${COUNT}
        ELSE IF    '${COUNT}'=='8'
            Log To Console   Estou no numero ${COUNT}
        ELSE
            Log To Console   Este não é o número 5 ou o número 8
        END
    END



