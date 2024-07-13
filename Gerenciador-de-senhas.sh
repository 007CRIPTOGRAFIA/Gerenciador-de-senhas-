#!/bin/bash

# Arquivo de banco de dados
DB_FILE="senhas.db"

# Função para mostrar o menu
mostrar_menu() {
    echo "Boas vindas ao gerenciador de senhas!"
    echo "1. Instruções"
    echo "2. Configurar banco de dados"
    echo "3. Criar nova senha"
    echo "4. Salvar senha existente"
    echo "5. Pegar senha"
    echo "6. Alterar senha"
    echo "7. Excluir senha"
    echo "8. Fazer backup"
    echo "9. Restaurar banco de dados"
    echo "0. Sair"
}

# Função para mostrar instruções
mostrar_instrucoes() {
    echo "Este é um gerenciador de senhas simples."
    echo "Use as opções do menu para gerenciar suas senhas."
}

# Função para configurar banco de dados
configurar_banco() {
    touch "$DB_FILE"
    echo "Banco de dados configurado em $DB_FILE"
}

# Função para criar nova senha
criar_senha() {
    read -p "Digite a aplicação: " aplicacao
    read -sp "Digite a senha: " senha
    echo
    data=$(date)
    echo "$aplicacao | $senha | $data" >> "$DB_FILE"
    echo "Senha criada com sucesso!"
}

# Função para salvar senha existente
salvar_senha_existente() {
    read -p "Digite a aplicação: " aplicacao
    read -sp "Digite a senha: " senha
    echo
    data=$(date)
    echo "$aplicacao | $senha | $data" >> "$DB_FILE"
    echo "Senha salva com sucesso!"
}

# Função para pegar senha
pegar_senha() {
    read -p "Digite a aplicação: " aplicacao
    grep "^$aplicacao" "$DB_FILE"
}

# Função para alterar senha
alterar_senha() {
    read -p "Digite a aplicação: " aplicacao
    read -sp "Digite a nova senha: " nova_senha
    echo
    data=$(date)
    sed -i "/^$aplicacao/d" "$DB_FILE"
    echo "$aplicacao | $nova_senha | $data" >> "$DB_FILE"
    echo "Senha alterada com sucesso!"
}

# Função para excluir senha
excluir_senha() {
    read -p "Digite a aplicação: " aplicacao
    sed -i "/^$aplicacao/d" "$DB_FILE"
    echo "Senha excluída com sucesso!"
}

# Função para fazer backup
fazer_backup() {
    cp "$DB_FILE" "${DB_FILE}.bak"
    echo "Backup feito com sucesso!"
}

# Função para restaurar banco de dados
restaurar_banco() {
    if [ -f "${DB_FILE}.bak" ]; then
        cp "${DB_FILE}.bak" "$DB_FILE"
        echo "Banco de dados restaurado com sucesso!"
    else
        echo "Nenhum backup encontrado!"
    fi
}

# Loop principal
while true; do
    mostrar_menu
    read -p "Escolha uma opção: " opcao

    case $opcao in
        0)
            echo "Obrigada por usar o gerenciador de senhas!"
            exit 0
            ;;
        1)
            mostrar_instrucoes
            ;;
        2)
            configurar_banco
            ;;
        3)
            criar_senha
            ;;
        4)
            salvar_senha_existente
            ;;
        5)
            pegar_senha
            ;;
        6)
            alterar_senha
            ;;
        7)
            excluir_senha
            ;;
        8)
            fazer_backup
            ;;
        9)
            restaurar_banco
            ;;
        *)
            echo "Opção inválida"
            ;;
    esac
done
