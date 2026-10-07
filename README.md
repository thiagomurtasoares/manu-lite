# Manu (versão simples)

Uma versão enxuta da Manu — a agente de IA que roda no [Hermes Agent](https://github.com/NousResearch/hermes-agent) (open source), com uma persona simples em `SOUL.md`.

Isso **não** é o produto completo da GuildaHub. Não tem time de especialistas, não tem voz, não tem instalador de 1 clique, não tem suporte. É só a Manu básica, pra você rodar no seu próprio servidor.

## O que você precisa

- Um servidor/VPS com Ubuntu ou Debian (Linux em geral)
- Um bot do Telegram (crie um em [@BotFather](https://t.me/BotFather) e pegue o token)
- Uma chave de API da [OpenRouter](https://openrouter.ai/) (ou outro provedor suportado pelo Hermes)

## Instalação

1. Instale o Hermes Agent seguindo o guia oficial:
   https://github.com/NousResearch/hermes-agent

2. Depois de instalado, copie o `SOUL.md` deste repositório pra dentro da pasta `~/.hermes/`:

   ```bash
   cp SOUL.md ~/.hermes/SOUL.md
   ```

3. Configure o `.env` do Hermes com sua chave de API e o token do bot do Telegram (veja a documentação do Hermes Agent pra saber os nomes certos das variáveis).

4. Suba o gateway:

   ```bash
   hermes gateway install
   ```

Pronto — a Manu já responde no seu Telegram com essa persona.

## Quer o pacote completo?

Essa versão é só o começo. O produto de verdade da GuildaHub tem:

- Um **time inteiro** de especialistas (dev, copy, tráfego, social, atendimento) que a Manu orquestra sozinha
- **Voz em tempo real** (fala com ela, ela responde por voz)
- **Escritório virtual 3D** pra ver o time trabalhando
- **Instalador de 1 clique** — você não mexe em servidor, VPS, Docker, nada
- Suporte de verdade quando travar

👉 [guildahub.com](https://guildahub.com)
