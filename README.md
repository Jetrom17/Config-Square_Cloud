# Config-Square_Cloud

Baseado em https://config.squareweb.app/ construi em **Shell**. Compatível com linha de comando para N plataformas operacionais. 

Para ser um arquivo executável, use o comando `chmod +x <NOME>`. 

Ou baixe o arquivo  com comando 

```wget https://raw.githubusercontent.com/Jetrom17/Config-Square_Cloud/main/config_sc.sh -O config_sc.sh``` 

ou ```bash <(curl -sSL https://raw.githubusercontent.com/Jetrom17/Config-Square_Cloud/main/config_sc.sh)``` execute sem necessidade de baixar o código.

ou ```echo 'alias sq-config="bash .square.sh"' >> ~/.bashrc```
Observação: O arquivo está oculto com o código e apelidado de "sq-config".


![square_cli](https://github.com/Jetrom17/Config-Square_Cloud/assets/72875404/f9886a4f-5a1b-48d4-9a4e-4c89789068bb)


```bash
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
```
