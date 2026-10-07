# 🤖 Manu (versão simples)

Uma versão enxuta da **Manu** — assistente de IA pessoal que roda em cima do
[Hermes Agent](https://github.com/NousResearch/hermes-agent) (open source).

Isso **não** é o produto completo da GuildaHub. Tem uma versão bem simples
do time (Giovana, Thiago, Leonardo, Rafael, Mel e Dudu), mas sem voz, sem
orquestração automática entre eles, sem instalador de 1 clique, sem suporte.
É a Manu no básico, pra rodar no seu próprio servidor.

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
| `team/` | Versão simples de 6 "colegas" (Giovana, Thiago, Leonardo, Rafael, Mel, Dudu) |
| `install.sh` | Script que instala tudo de uma vez |

Sobre o `team/`: são arquivos simples que a própria Manu lê quando o assunto
é claramente de um deles (ex: pergunta de código → ela lê `leonardo-dev.md`
e responde nesse papel). Não tem orquestração automática nem delegação real
entre eles — é bem mais rústico que o produto completo.

## Quer o pacote completo?

Essa versão é só a ponta do iceberg. O produto de verdade da GuildaHub tem:

- 🧑‍💻 O time de verdade, com **orquestração automática** — a Manu delega
  a tarefa pro especialista certo sozinha, sem você precisar pedir
- 🎙️ **Voz em tempo real** — fala com ela, ela responde por voz
- 🏢 **Escritório virtual 3D** pra ver o time trabalhando
- ⚡ **Instalador de 1 clique** — zero servidor, zero Docker, zero
  configuração na mão
- 🛟 Suporte de verdade quando algo travar

👉 **[guildahub.com](https://guildahub.com)**
