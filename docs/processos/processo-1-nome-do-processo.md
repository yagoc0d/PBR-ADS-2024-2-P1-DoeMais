### 3.3.1 Processo 1 – Cadastro de Clientes



![Processo 1](https://github.com/user-attachments/assets/c3b0b015-10c9-43f5-9af0-e1591ba5c5f9)


#### Detalhamento das atividades

_Descreva aqui cada uma das propriedades das atividades do processo 1. 
Devem estar relacionadas com o modelo de processo apresentado anteriormente._

_Os tipos de dados a serem utilizados são:_


_* **Caixa de texto** - campo texto de uma linha_

_* **Número** - campo numérico_


**Cadastro de Clientes**

| **Campo**       | **Tipo**         | **Restrições** | **Valor default** |
| ---             | ---              | ---            | ---               |
| Nome completo  | Campo de texto  | Até 100 caracteres - Obrigatorio |                   |
| ***Exemplo:***  |                  |                |                   |
| Derick Eduardo          |                   |                 |                |
| CPF  |   Campo Numerico  |     11 caracteres - Obrigatorio   |                   |
| ***Exemplo:***  |                  |                |                   |
| 70112393654           |              |             |                |
| Email  | Campo de texto   |    Formato “@dominio.com”  - Obrigatorio     |                   |
| ***Exemplo:***  |                  |                |                   |
| exemplo@gmail.com          |   |          |                |
| Telefone  | Campo Numerico | Formato “5531912345689”  |                   |
| ***Exemplo:***  |                  |                |                   |
| 5531992953548          |                   |                 |                |
| Senha de acesso   | Campo de texto  | Mínimo 8 caracteres - Obrigatorio |                   |
| ***Exemplo:***  |                  |                |                   |
| 456122          |                   |                 |                |
| Senha de acesso   | Campo de texto  | Igual à primeira senha |                   |
| ***Exemplo:***  |                  |                |                   |
|      456122    |                   |                 |                |


| **Comandos**         |  **Destino**                   | **Tipo** |
| ---                  | ---                            | ---               |
| Enviar formulário  | Página de login  | Default    |
| ***Exemplo:***       |                                |                   |
| preenche formulario          |              |           |
| Enviar                  |               |                   |
| Enviar formulário  | Recarregar a mesma página  | Erro de salvamento/envio   |
| ***Exemplo:***       |                                |                   |
|  Valida informção             |                       |           |
| Recarrega a pagina/Envia os dados            |  |                   |
| Voltar para o login  |Página de login   | Alternativo   |
| ***Exemplo:***       |                                |                   |
| Retorna para pagina de login   | Fim do Processo 1              | default           |
|           |  |                   |


