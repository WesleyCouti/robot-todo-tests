*** Settings ***
Documentation        Cenarios de testes do Gerenciamento de atividades To-Do

LIbrary        Browser 

*** Test Cases ***
Adicionar três atividades e validar filtro de concluídas
    
    # --- Abertura do navegador e acesso à aplicação ---
    New Browser    browser=chromium    headless=False
    New Page        https://todomvc.com/examples/react/dist/
    Wait For Elements State    text=todos    visible    5

    # --- Adicionar atividades ---
    Fill Text       id=todo-input    Valor01
    Press Keys      id=todo-input    Enter  

    Fill Text       id=todo-input    Valor02
    Press Keys      id=todo-input    Enter 

    Fill Text       id=todo-input    Valor03
    Press Keys      id=todo-input    Enter 

    # --- Marcar a segunda atividade como concluída ---
    Click    //label[normalize-space(text())="Valor02"]/preceding-sibling::input
    Click    css=a[href="#/completed"]

Excluir atividade concluída e validar filtro de concluídas

    # --- Abertura do navegador e acesso à aplicação ---
    New Browser    browser=chromium    headless=False
    New Page        https://todomvc.com/examples/react/dist/
    Wait For Elements State    text=todos    visible    5

    # --- Adicionar atividades ---
    Fill Text       id=todo-input    Valor01
    Press Keys      id=todo-input    Enter  

    Fill Text       id=todo-input    Valor02
    Press Keys      id=todo-input    Enter 

    Fill Text       id=todo-input    Valor03
    Press Keys      id=todo-input    Enter 

    Fill Text       id=todo-input    Valor04
    Press Keys      id=todo-input    Enter 

    # --- Marcar a terceira atividade como concluída ---
    Click    //label[normalize-space(text())="Valor03"]/preceding-sibling::input
    
    # --- Excluir a terceira atividade ---
    Click    xpath=//button[@class='clear-completed' and text()='Clear completed']
    
     # --- Filtrar atividades concluidas ---
    Click    css=a[href="#/completed"]

Adicionar quatro atividades e limpar a concluída

    # --- Abertura do navegador e acesso à aplicação ---
    New Browser    browser=chromium    headless=False
    New Page        https://todomvc.com/examples/react/dist/
    Wait For Elements State    text=todos    visible    5

    # --- Adicionar atividades ---
    Fill Text       id=todo-input    Valor01
    Press Keys      id=todo-input    Enter  

    Fill Text       id=todo-input    Valor02
    Press Keys      id=todo-input    Enter 

    Fill Text       id=todo-input    Valor03
    Press Keys      id=todo-input    Enter 

    Fill Text       id=todo-input    Valor04
    Press Keys      id=todo-input    Enter 

    # --- Marcar a quarta atividade como concluída ---
    Click    //label[normalize-space(text())="Valor04"]/preceding-sibling::input
    
    # --- Limpar atividades concluidas ---
    Click    xpath=//button[@class='clear-completed' and text()='Clear completed']
    
     # --- Filtrar atividades concluidas ---
    Click    css=a[href="#/completed"]
