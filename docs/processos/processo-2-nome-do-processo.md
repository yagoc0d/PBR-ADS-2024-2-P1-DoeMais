### 3.3.2 Processo 2 – Cadastro de Parceiros 

![imagen do processo](https://github.com/user-attachments/assets/fd9722af-8700-4e86-869c-da6b32a9e354)



#### Detalhamento das atividades



_Os tipos de dados a serem utilizados são:_

_* **Área de texto** - campo texto de múltiplas linhas_

_* **Caixa de texto** - campo texto de uma linha_

_* **Número** - campo numérico_


**Cadastro de parceiros**

| **Campo**       | **Tipo**         | **Restrições** | **Valor default** |
| ---             | ---              | ---            | ---               |
| Nome completo   | Caixa de texto   |  Obrigatório   |                   |
| ***Exemplo:***  |                  |                |                   |
| Derick      | Caixa de Texto   | Até 100 caracteres |                |
| ---             | ---              | ---            | ---               |
| CNPJ | Numero |        Obrigatorio        |                   |
| ***Exemplo:***  |                  |                |                   |
| 12.345.678/9012-34” | Numero   | formato: “12.345.678/9012-34” |                |
| ---             | ---              | ---            | ---               |
| Email  | Campo de texto  |       Obrigatório         |                   |
| ***Exemplo:***  |                  |                |                   |
| fulano@gmail.com          | Caixa de Texto   | Formato “@dominio.com”|                |
| ---             | ---              | ---            | ---               |
| Endereço  | Área de texto |     Obrigatório           |                   |
| ***Exemplo:***  |                  |                |                   |
| cep           | Numero  |  Formato CEP “12345-678”  |                |
| numero           | Numero  |Formato Número  “256” |           |
| Tipo de estabelecimento | Campo de texto  | Obrigatório                |                   |
| ***Exemplo:***  |                  |                |                   |
| Restaurante          | Caixa de Texto   | Limite de 50 a 100 caracteres - Campo em branco invalido  |                |


| **Comandos**         |  **Destino**                   | **Tipo** |
| ---                  | ---                            | ---               |
| Enviar Formulário  |Módulo de Cadastro de Estabelecimento  | Envio   ) |
| ***Exemplo:***       |                                |                   |
| Ao clicar no botão "Enviar", os dados do formulário são enviados para o sistema, onde são processados e armazenados no banco de dados. Se o cadastro for bem-sucedido, uma mensagem de confirmação é exibida ao usuário.             |            |            |
| ---                  | ---                            | ---               |
|Rejeita cadastro   |Administração de Parceiros | Rejeição    ) |
| ***Exemplo:***       |                                |                   |
|     	Ao clicar no botão "Rejeitar", o cadastro do parceiro selecionado é marcado como rejeitado. O sistema notifica o usuário sobre a rejeição         |            |            |
| ---                  | ---                            | ---               |
|Aprovar Cadastro   |Administração de Parceiros   | Aprovação) |
| ***Exemplo:***       |                                |                   |
|    	  Ao clicar no botão "Aprovar", o cadastro do parceiro selecionado é validado e ativado no sistema.   |            |            |
| ---                  | ---                            | ---               |
| Solicitar Documentação Adicional   |Administração de Parceiros e Sistema de Notificação   | Envio   ) |
| ***Exemplo:***       |                                |                   |
|     Ao clicar no botão "Solicitar Documentação", uma notificação é enviada ao parceiro, solicitando documentos pendentes para completar seu cadastro.       |            |            |



