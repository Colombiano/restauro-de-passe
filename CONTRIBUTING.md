# Contribuindo com o Restauro de Passé

Obrigado por querer ajudar! Este projeto vive da comunidade — como a própria
igrejinha. Aqui está como participar, mesmo sem saber programar.

## Reportar um problema

- **Erro histórico ou fonte melhor:** abra uma *issue* com o fato, a fonte (link ou
  referência bibliográfica) e, se possível, a página/documento. Correções com fonte
  entram rápido; opiniões sem fonte viram discussão. 🙂
- **Erro de impressão, texto cortado, regra confusa:** abra *issue* com foto ou
  descrição da carta (ex.: “H03, texto do SABER passa do rodapé”).
- **Ideia de carta nova:** use o modelo abaixo e abra *pull request* (ou *issue*,
  se não souber git).

## Criar uma nova carta

As cartas vivem em `cartas/cartas.tex`, uma chamada `\carta` por carta, 9 campos:

```latex
\carta{cor}{naipe}{\icoNaipe{white}}{TÍTULO}{valor}{\icoIlustra{tinta}}
{citação entre aspas}
{saber — o fato, com a fonte em docs/HISTORIA.md}
{efeito — o que acontece no jogo}
{código (ex.: H17)}{cor da peça}{inicial da peça}
```

Regras de ouro:

1. **Todo SABER precisa de fonte** listada em `docs/HISTORIA.md`. Sem fonte, a
   carta não entra — ensinar errado é pior que não ensinar.
2. Respeite o **equilíbrio do baralho**: ao adicionar cartas de peça, cuide para
   as cinco peças continuarem alcançáveis (veja a distribuição no cabeçalho de
   `cartas.tex`).
3. Texto do SABER: até ~220 caracteres (cabe em 5 linhas). EFEITO: até ~140.
4. Pictogramas novos: adicione em `cartas/preambulo_cartas.tex`, dentro da caixa
   `(0,0)–(1,1)`, traço 1.1pt, um parâmetro de cor `#1`.
5. Compile (`pdflatex cartas.tex` duas vezes) e confira que nada transborda.

## Traduzir

O jogo nasceu em português (Brasil). Traduções de regras e textos das cartas são
bem-vindas: crie `regras/regras-<idioma>.tex` (ou proponha na *issues* primeiro).

## Código de conduta

- Respeito com a comunidade de Passé e com quem contribui.
- Nada de usar o projeto para desmerecer moradores, pesquisadores ou órgãos.
- Ao citar a igreja em publicações, mencione que ela é inventariada (IPAC, 1977)
  e que o tombamento é reivindicação comunitária — não afirme status que muda com
  o tempo sem checar as fontes atuais.

## Licença

Ao contribuir, você concorda que seu conteúdo seja publicado sob as licenças do
projeto (CC BY-SA 4.0 para conteúdo; MIT para código).
