## 3. Modelagem dos Processos de Negócio


> **Links Úteis**:
> - [Modelagem de Processos AS-IS x TO-BE](https://dheka.com.br/modelagem-as-is-to-be/)
> - [20 Dicas Práticas de Modelagem de Processos](https://dheka.com.br/20-dicas-praticas-de-modelagem-de-processos/)

### 3.1 Modelagem da Situação Atual (Modelagem AS IS)
Descrição Textual do Processo Atual
Atualmente, o processo de coleta e análise de feedback em plataformas de doações de alimentos, como o projeto "Doe Mais", pode ser realizado de maneira fragmentada e manual, com várias etapas que envolvem múltiplas interações e revisões por parte de usuários e equipes responsáveis. O processo descrito no diagrama AS-IS é detalhado a seguir:

Processo AS-IS de Coleta de Feedback:

Solicitação de Feedback pelo Sistema: O sistema inicia o processo enviando uma solicitação de feedback ao usuário.
Preenchimento do Feedback pelo Usuário: O usuário recebe a solicitação e preenche o formulário de feedback com suas impressões e informações relevantes.

Envio do Feedback: O usuário envia o feedback preenchido de volta para o sistema.
Validação pelo Sistema: O sistema verifica se o feedback foi preenchido corretamente. Se não for preenchido, o processo é encerrado sem conclusão.
Armazenamento do Feedback: Se o feedback estiver completo, as informações são armazenadas em uma base de dados e enviadas para a equipe responsável.
Análise pela Equipe: A equipe responsável recebe os resultados do feedback e realiza uma análise detalhada.
Discussão e Definição de Melhorias: Com base na análise, a equipe discute os resultados e define as melhorias necessárias para aprimorar o processo de doação.
Dependência Manual: O processo de preenchimento e envio de feedback depende da ação manual dos usuários.
Verificação Limitada: A validação de preenchimento é simples e pode não verificar a qualidade ou completude das respostas.
Processo Lento de Análise: A análise dos resultados pela equipe responsável pode ser demorada, levando a um atraso na implementação de melhorias.

![image](https://github.com/user-attachments/assets/6f83d062-838f-4878-9a21-e99756bc716e)


### 3.2 Descrição Geral da Proposta (Modelagem TO BE)
A proposta da solução "Doe Mais" inclui a criação de um sistema unificado e simplificado para cadastro e login, melhorando a experiência do usuário e otimizando os processos para reduzir erros e retrabalho.

Processo de Cadastro de Usuários (Proposta TO BE):
Acesso Simplificado: O usuário acessa a plataforma e realiza o cadastro de forma intuitiva, com verificação automática das informações.
Validação Automatizada: O backend valida as informações em tempo real e fornece feedback imediato sobre eventuais erros ou sucessos.
Registro Eficiente: Se as informações estiverem corretas, os dados são salvos automaticamente no banco de dados, confirmando o sucesso do cadastro com uma notificação clara ao usuário.

Processo de Login (Proposta TO BE):
Autenticação Otimizada: O processo de login utiliza autenticação segura e fornece respostas claras em caso de falha, sugerindo soluções para erros comuns.
Acesso Rápido: Credenciais válidas direcionam o usuário à página inicial com maior eficiência, otimizando o tempo de navegação.
Limites da Solução:
Dependência de conexão à internet: A solução depende de acesso estável à internet para realizar a verificação de dados em tempo real.
Atualização de Informações: A eficácia da experiência depende da manutenção e atualização das informações no banco de dados.
Oportunidades de Melhoria:
Automatização e Redução de Erros: A validação automatizada diminui o retrabalho e aumenta a precisão dos dados.
Feedback Imediato: Respostas em tempo real melhoram a experiência do usuário e ajudam a resolver problemas de login e cadastro rapidamente.

![image](https://github.com/user-attachments/assets/ab1132cb-4d6d-4393-9893-8f69a5ff5cc2)



### 3.3. Modelagem dos processos

[PROCESSO 1 - Nome do Processo](./processos/processo-1-nome-do-processo.md "Detalhamento do Processo 1.")

[PROCESSO 2 - Nome do Processo](./processos/processo-2-nome-do-processo.md "Detalhamento do Processo 2.")
