# Debian Post-Installation Script

Este script automatiza as tarefas comuns de pós-instalação no Debian, incluindo:

- Atualização do sistema
- Instalação de pacotes essenciais
- Configuração do ambiente de desenvolvimento Python com pyenv
- (Opcional) Instalação e configuração do ZSH com Oh My ZSH, Spaceship Prompt, Zsh Autosuggestions e Zsh Syntax Highlighting

## Pré-requisitos

- Um sistema Debian recém-instalado
- Acesso à internet
- Privilégios de sudo

## Como usar

1. Salve o script como `post_installation_debian.sh`
2. Abra um terminal e navegue até o diretório onde você salvou o script
3. Torne o script executável: `chmod +x post_installation_debian.sh`
4. Execute o script: `sudo ./post_installation_debian.sh`
5. Siga as instruções na tela, se houver

## Personalização

Você pode personalizar o script modificando as seguintes seções:

- **Pacotes instalados**: adicione ou remova pacotes da lista de pacotes a serem instalados.
- **Configuração do ZSH**: personalize os plugins e o tema do ZSH modificando o arquivo `.zshrc`.

## Observações

- A instalação do VS Code requer download manual do site oficial.
- A seção de configuração do ZSH é opcional.
- Um reboot é necessário após a execução do script para que todas as alterações tenham efeito.

## Contribuindo

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou pull requests.
