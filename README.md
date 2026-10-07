# 🤖 Manu (versão simples)

Uma versão enxuta da **Manu** — assistente de IA pessoal que roda em cima do
[Hermes Agent](https://github.com/NousResearch/hermes-agent) (open source).

Isso **não** é o produto completo da GuildaHub. Sem time de especialistas,
sem voz, sem instalador de 1 clique, sem suporte. É a Manu no básico, pra
rodar no seu próprio servidor.

## O que você precisa

- Um servidor/VPS com Linux (Ubuntu/Debian de preferência)
- Um bot do Telegram (crie em [@BotFather](https://t.me/BotFather) e pegue o token)
- Uma chave de API de algum provedor suportado pelo Hermes (ex: [OpenRouter](https://openrouter.ai/))

## Instalação rápida

```bash
curl -fsSL https://raw.githubusercontent.com/thiagomurtasoares/manu-lite/main/install.sh | bash
```

Isso instala o Hermes Agent (se ainda não tiver) e planta a persona da Manu
(`SOUL.md` + `AGENTS.md`) em `~/.hermes/`. Depois é só:

```bash
hermes setup            # configura sua chave de API e o bot do Telegram
hermes gateway install  # deixa ela rodando sempre, mesmo se o servidor reiniciar
```

Pronto — a Manu já responde no seu Telegram.

## Instalação manual

Prefere fazer na mão? Segue o guia oficial do
[Hermes Agent](https://github.com/NousResearch/hermes-agent) e depois copie
`SOUL.md` e `AGENTS.md` deste repo pra dentro de `~/.hermes/`.

## O que tem aqui dentro

| Arquivo | O que é |
|---|---|
| `SOUL.md` | Identidade da Manu — nome, jeito de falar, personalidade |
| `AGENTS.md` | Regrinhas básicas de segurança (não é o contrato completo) |
| `install.sh` | Script que instala tudo de uma vez |

## Quer o pacote completo?

Essa versão é só a ponta do iceberg. O produto de verdade da GuildaHub tem:

- 🧑‍💻 Um **time inteiro** de especialistas (dev, copy, tráfego, social,
  atendimento) que a Manu orquestra sozinha
- 🎙️ **Voz em tempo real** — fala com ela, ela responde por voz
- 🏢 **Escritório virtual 3D** pra ver o time trabalhando
- ⚡ **Instalador de 1 clique** — zero servidor, zero Docker, zero
  configuração na mão
- 🛟 Suporte de verdade quando algo travar

👉 **[guildahub.com](https://guildahub.com)**
