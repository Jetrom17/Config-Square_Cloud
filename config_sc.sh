#!/bin/bash

# Função para ler uma entrada do usuário com uma mensagem de prompt
get_input() {
    read -p "$1: " response
    echo "$response"
}

# Introdução
echo "Bem-vindo ao assistente de configuração!"
echo "Vamos configurar as informações da aplicação"
echo

# Modal
DISPLAY_NAME=$(get_input "Nome de Exibição")
MAIN=$(get_input "Nome do arquivo principal")
MEMORY=$(get_input "Quantidade de Memória")
AVATAR=$(get_input "URL do Avatar")
DESCRIPTION=$(get_input "Descrição do Aplicativo")
# Boolean
read -p "Alguma versão específica? Senão, deixe em branco: " VERSION
if [ -z "$VERSION" ]; then
    VERSION="recommended"
fi


# squarecloud.app
echo "DISPLAY_NAME=$DISPLAY_NAME" > squarecloud.app
echo "MAIN=$MAIN" >> squarecloud.app
echo "MEMORY=$MEMORY" >> squarecloud.app
echo "AVATAR=$AVATAR" >> squarecloud.app
echo "DESCRIPTION=$DESCRIPTION" >> squarecloud.app
echo "VERSION=$VERSION" >> squarecloud.app

# Mensagem final
echo "Configurações salvas no arquivo squarecloud.app"
