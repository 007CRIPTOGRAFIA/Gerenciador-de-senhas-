# Gerenciador-de-senhas
<img src = "/print.png">

### O que é este projeto?

Este projeto é um gerenciador de senhas por linha de comando escrito em Bash. Ele permite salvar, criar, editar e excluir senhas associadas a diferentes aplicações. Além disso, o projeto permite fazer backup e restaurar o banco de dados de senhas, garantindo que seus dados estejam sempre seguros.

### Como utilizar este projeto?

Para utilizar este projeto, siga os passos abaixo:

1. **Download do Projeto**:
   - Clone o repositório com o comando `git clone https://github.com/007CRIPTOGRAFIA/Gerenciador-de-senhas-/tree/main`.
   - Ou faça o download do arquivo `.zip` clicando no botão verde "Code" e, em seguida, na opção de baixar o arquivo zip.
   - Após baixar, descompacte o arquivo (caso tenha baixado a opção .zip) e abra o terminal na pasta principal da aplicação.

2. **Executar o Projeto**:
   - No terminal, dê permissão de execução ao script com o comando `chmod +x gerenciador_senhas.sh`.
   - Execute o script com o comando `./gerenciador_senhas.sh`.

### Funcionalidades do Menu:

Uma vez que a aplicação esteja em execução, um menu será exibido. Você pode selecionar as opções a partir de valores numéricos:

0 - Sair da aplicação  
1 - Ver instruções de uso  
2 - Configurar banco de dados  
3 - Criar nova senha  
4 - Salvar senha existente  
5 - Pegar senha  
6 - Alterar senha  
7 - Excluir senha  
8 - Fazer backup  
9 - Restaurar banco de dados  

### Considerações de Segurança:

- **Backup de Senhas**: Ao fazer o backup das senhas, é possível acessar todas as senhas cadastradas abrindo o arquivo de backup. Este é um projeto de estudos, não uma aplicação comercial, e as senhas são armazenadas em texto simples. Em um ambiente real, recomenda-se o uso de criptografia para proteger as senhas.

### Observações:

- **Banco de Dados**: O banco de dados é um simples arquivo de texto (`senhas.db`), onde as senhas são armazenadas em formato "aplicacao | senha | data".
- **Backup**: O backup é feito criando uma cópia do arquivo de banco de dados com extensão `.bak`.
- **Restaurar**: Para restaurar o banco de dados, o backup deve estar na mesma pasta do script.
- **Dependências**: Este script não possui dependências externas, sendo necessário apenas ter o Bash instalado, o que é comum em sistemas Unix-like.

## Explicação das Novas Funções
## Configurar Banco: Cria o banco de dados e a tabela senhas se não existirem.

##  Criar e Salvar Senha: Insere novas senhas na tabela senhas.
## Pegar Senha: Recupera a senha para uma aplicação específica.

 ## Alterar Senha: Atualiza a senha para uma aplicação específica.

## Excluir Senha: Remove a senha para uma aplicação específica.

 ## Fazer Backup: Cria um dump SQL do banco de dados.
Restaurar Banco: Restaura o banco de dados a partir do dump SQL.

## Observações de Segurança
Criptografia de Senhas: Este script salva as senhas em texto claro. Em um cenário de produção, você deve criptografar as senhas antes de armazená-las.
Variáveis de Ambiente: Para maior segurança, você pode armazenar as credenciais do banco de dados em variáveis de ambiente em vez de hardcodá-las no script.

## Configurar o Acesso ao Banco de Dados
Você precisa de um banco de dados e um usuário configurado. Acesse o MySQL como root:

{ sudo mysql -u root -p }

