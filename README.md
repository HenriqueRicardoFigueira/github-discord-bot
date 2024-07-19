
## GitHub-Discord-Bot 

**Notificações de atualizações do GitHub no Discord com Ruby on Rails**

Este repositório fornece um bot Discord que notifica servidores Discord sobre atualizações em repositórios GitHub. O bot é escrito em Ruby on Rails 7.2.0.beta3 e utiliza a API do GitHub e Discord para monitorar e comunicar alterações.

### Funcionalidades

* **Notificação de releases:** O bot notifica o canal Discord alvo quando uma nova release é publicada no repositório GitHub, incluindo informações sobre o autor, versão e modificações.
* **Notificação de pull requests:** O bot notifica o canal Discord alvo quando um pull request recebe um label que contém a palavra "codereview". Isso facilita a identificação e revisão de pull requests relevantes.

### Configuração

1. **Crie um arquivo .env:** Crie um arquivo `.env` na raiz do projeto e adicione as seguintes informações:

```
DISCORD_BOT_TOKEN=your_discord_bot_token
DISCORD_CLIENT_ID=your_discord_client_id
DISCORD_CHANNEL_ID=your_discord_channel_id
```

* Substitua `your_discord_bot_token` pelo seu token de bot Discord.
* Substitua `your_discord_client_id` pelo ID de cliente Discord.
* Substitua `your_discord_channel_id` pelo ID do canal Discord que você deseja usar para receber notificações.

2. **Instalar dependências:** Execute o seguinte comando para instalar as dependências do Rails:

```bash
bundle install
```

3. **Executar o bot:** Inicie o bot executando o seguinte comando:

```bash
rails server
```

O bot agora estará monitorando o repositório GitHub e enviará notificações para o canal Discord especificado quando forem detectadas novas releases ou pull requests com labels de "codereview".

### Contribuições

Agradecemos a sua contribuição para o desenvolvimento deste projeto! Se você quiser contribuir, siga estas etapas:

1. Crie um fork do repositório.
2. Faça suas alterações em uma branch separada.
3. Envie um pull request para a branch principal.
4. Revise e teste as alterações antes de enviar o pull request.

A equipe do GitHub-Discord-Bot analisará seu pull request e o integrará ao projeto se for considerado útil.

### License

Este projeto está licenciado sob a licença MIT.

