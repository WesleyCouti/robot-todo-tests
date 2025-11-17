# Testes Automatizados – Gerenciamento de Atividades (To-Do)

Este repositório contém testes automatizados utilizando **Robot Framework** com a **Browser Library** (Playwright), validados na aplicação de exemplo **To-Do**:  
https://todomvc.com/examples/react/dist/

Os testes têm como objetivo verificar o fluxo de criação, finalização, exclusão e filtragem de atividades.

---

## Tecnologias utilizadas

- **Robot Framework**
- **Browser Library (Playwright)**
- **XPath / CSS Selectors**
- **To-Do MVC – React Example**

---

## Estrutura dos Testes

O arquivo contém três cenários principais:

### 1️⃣ Adicionar três atividades e validar filtro de concluídas
- Abre o navegador e acessa a aplicação.
- Adiciona três atividades (`Valor01`, `Valor02`, `Valor03`).
- Marca a segunda atividade como concluída.
- Acessa o filtro **Completed**.

### 2️⃣ Excluir atividade concluída e validar filtro de concluídas
- Abre o navegador e acessa a aplicação.
- Adiciona quatro atividades.
- Conclui a terceira (`Valor03`).
- Utiliza o botão **Clear completed** para remover a atividade marcada.
- Valida o filtro **Completed**.

### 3️⃣ Adicionar quatro atividades e limpar a concluída
- Abre o navegador e acessa a aplicação.
- Adiciona quatro atividades.
- Marca a quarta atividade como concluída.
- Usa **Clear completed** para limpar as concluídas.
- Acessa o filtro **Completed**.

---

## Como executar os testes

### **1. Instalar dependências**

Certifique-se de ter **Python 3.8+** instalado.

```bash
pip install robotframework
pip install robotframework-browser
rfbrowser init




Executar o teste

robot nome_do_arquivo.robot

Gerar os relatórios em uma pasta separada:

robot -d results nome_do_arquivo.robot
