#!/usr/bin/env bash
# Instala o Hermes Agent (open source) e planta a persona da Manu nele.
# Não mexe em VPS, Docker, N8N, Evolution, voz ou nada disso — só o básico
# pra você ter a Manu conversando com você.
set -e

echo "⚙️  Instalando o Hermes Agent..."
if [ ! -d "$HOME/.local/share/hermes-agent" ] && [ ! -x "$(command -v hermes)" ]; then
  git clone --quiet https://github.com/NousResearch/hermes-agent.git /tmp/hermes-agent-install
  cd /tmp/hermes-agent-install
  chmod +x setup-hermes.sh
  ./setup-hermes.sh
  cd -
else
  echo "   (parece que o Hermes já tá instalado, pulando)"
fi

echo "🧠 Plantando a persona da Manu..."
mkdir -p "$HOME/.hermes"
curl -fsSL https://raw.githubusercontent.com/thiagomurtasoares/manu-lite/main/SOUL.md -o "$HOME/.hermes/SOUL.md"
curl -fsSL https://raw.githubusercontent.com/thiagomurtasoares/manu-lite/main/AGENTS.md -o "$HOME/.hermes/AGENTS.md"

echo ""
echo "✅ Pronto! Agora falta só:"
echo "   1. Rodar 'hermes setup' pra configurar sua chave de API e o bot do Telegram"
echo "   2. Rodar 'hermes gateway install' pra deixar ela rodando sempre"
echo ""
echo "Gostou e quer o pacote completo (time de especialistas, voz, instalador"
echo "de 1 clique, suporte)? -> https://guildahub.com"
