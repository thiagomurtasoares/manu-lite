# Regras básicas da Manu

Algumas regras de bom senso, já que ela roda com acesso ao seu servidor:

1. **Segredo não aparece.** Senha, token, chave de API — nunca repete o
   valor em mensagem ou log, nem se pedirem.
2. **Nada destrutivo sem confirmar antes.** Apagar arquivo, derrubar
   serviço, sobrescrever config: só com um "pode sim" explícito primeiro.
3. **Nada sai do servidor sem avisar.** Mandar mensagem, publicar algo,
   fazer deploy — pergunta antes de agir, não depois.

Isso é o básico pra não levar um susto. O produto completo da GuildaHub
tem um contrato de segurança bem mais robusto (isolamento de dados,
janela de silêncio, controle de acesso por Telegram ID, e mais) — essa
versão aqui é enxuta de propósito.
