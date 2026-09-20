# Como usar este projeto no Windows e no macOS

Guia passo a passo para quem **não é da área de computação**. Não precisa saber
programar: o caminho mais fácil nem instala nada no computador.

---

## Parte 1 — O jeito mais fácil (sem instalar nada) ✅

Você só precisa dos PDFs prontos. Eles são gerados automaticamente pelo projeto.

1. Abra a página de **Releases** (versões) do projeto:
   https://github.com/Colombiano/restauro-de-passe/releases
2. Na versão mais recente (ex.: **v1.0.0**), clique para baixar:
   - `cartas.pdf` — as cartas (12 páginas: 6 de frente + 6 de verso)
   - `regras.pdf` — o manual de regras
3. Pronto! Siga para a **Parte 3 — Imprimindo** abaixo.

> Se preferir, pode jogar direto da tela: abra o `cartas.pdf`, projeto na sala de
> aula ou na TV, e use as cartas como "baralho falado".

---

## Parte 2 — Compilando você mesmo (opcional)

"Só quero jogar" → use a Parte 1. "Quero mexer nas cartas, criar as minhas,
aprender LaTeX" → siga aqui. A compilação transforma os arquivos `.tex`
(código-fonte) nos PDFs finais.

### 2.1 Baixar o projeto

Você **não precisa** do Git. Basta:

1. Abra https://github.com/Colombiano/restauro-de-passe
2. Clique no botão verde **Code** → **Download ZIP**
3. Extraia o ZIP numa pasta de fácil acesso (ex.: `Documentos/restauro-de-passe`)

### 2.2 No Windows

**Instalar o MiKTeX (gratuito):**

1. Baixe em https://miktex.org/download (escolha a versão para Windows)
2. Execute o instalador. Nas opções, deixe **"Install missing packages on the
   fly" = Yes** (assim ele baixa sozinho qualquer componente que faltar)
3. Termine a instalação (pode demorar alguns minutos)

**Gerar os PDFs — opção A, pela janelinha (mais fácil):**

1. Abra o programa **TeXworks** (vem junto com o MiKTeX)
2. Abra o arquivo `cartas/cartas.tex`
3. No menu suspenso ao lado do botão verde, escolha **pdfLaTeX**
4. Clique no botão verde **duas vezes** (a segunda vez acerta os versos das
   cartas). Na primeira execução pode demorar mais, porque o MiKTeX baixa
   componentes automaticamente
5. Repita com `regras/regras.tex`
6. Os PDFs aparecem na mesma pasta de cada arquivo

**Opção B, pela linha de comando:**

1. Aperte a tecla `Windows`, digite `cmd` e abra o **Prompt de Comando**
2. Digite os comandos (ajuste o caminho da pasta onde você extraiu):

```bat
cd Documentos\restauro-de-passe\cartas
pdflatex cartas.tex
pdflatex cartas.tex
cd ..\regras
pdflatex regras.tex
pdflatex regras.tex
```

> **Sobre o script `ferramentas/compilar.sh`:** ele é um atalho para Linux/macOS.
> No Windows, use a Opção A ou B acima. Se um dia instalar o **Git for Windows**,
> o "Git Bash" que acompanha consegue rodar `bash ferramentas/compilar.sh`.

### 2.3 No macOS

**Instalar o MacTeX (gratuito):**

1. Baixe em https://tug.org/mactex/ (escolha **MacTeX**, ~4 GB — é grande, mas
   instala tudo de uma vez; para disco pequeno, veja a nota abaixo)
2. Abra o `.pkg` baixado e siga a instalação normal
3. Se usa **Homebrew**, a alternativa é o comando:
   `brew install --cask mactex`

**Gerar os PDFs — opção A, pelo TeXShop (mais fácil):**

1. Abra o **TeXShop** (instalado junto com o MacTeX)
2. Abra o arquivo `cartas/cartas.tex`
3. Menu **Typeset** → escolha **pdfTeX** → clique em **Typeset** (botão verde)
   **duas vezes** (a segunda vez acerta os versos das cartas)
4. Repita com `regras/regras.tex`

**Opção B, pelo Terminal:**

1. Abra o **Terminal** (Cmd + Espaço, digite "Terminal")
2. Digite (ajuste o caminho da pasta onde você extraiu):

```bash
cd ~/Downloads/restauro-de-passe/cartas
pdflatex cartas.tex
pdflatex cartas.tex
cd ../regras
pdflatex regras.tex
pdflatex regras.tex
```

Ou use o atalho do projeto:

```bash
cd ~/Downloads/restauro-de-passe
bash ferramentas/compilar.sh
```

> **Disco pequeno?** Existe o **BasicTeX** (~100 MB, mesma página do MacTeX), mas
> ele instala só o básico. Depois, no Terminal, rode:
> `sudo tlmgr install lmodern collection-latexrecommended collection-pictures collection-langportuguese`

---

## Parte 3 — Imprimindo as cartas 🖨️

Configuração certa é o segredo das cartas bonitas:

| Configuração | Valor |
|---|---|
| Papel | A4 (210 × 297 mm) |
| Escala / Tamanho | **100 %** ou **"Tamanho real"** (nunca "ajustar à página") |
| Frente e verso | **Sim — "virar na borda longa"** (long-edge duplex) |
| Qualidade | Alta (ou "fotográfica") |

- **No Windows:** abra o `cartas.pdf` no **Adobe Acrobat Reader** (gratuito) →
  Imprimir → em "Tamanho" escolha **Tamanho real** → marque **Imprimir em ambos
  os lados** → opção **Virar na borda longa**.
- **No macOS:** abra no **Pré-Visualização** → Arquivo → Imprimir → escala **100%**
  → **Duplex: Virar na borda longa**.

**Impressora não faz frente e verso?**

1. Imprima primeiro as **páginas ímpares** (1, 3, 5, 7, 9, 11) — são as frentes
2. Coloque as folhas impressas de volta na bandeja (lado em branco para cima;
   faça um teste com uma folha só para descobrir a orientação certa da sua
   impressora)
3. Imprima as **páginas pares** (2, 4, 6, 8, 10, 12) — são os versos

**Acabamento:** recorte pelas bordas com tesoura, estilete e régua, ou guilhotina.
Cartas de 63 × 88 mm (padrão de baralho). Arredonde os cantos se quiser um toque
profissional. O `regras.pdf` pode ser impresso em qualquer papel, frente apenas.

---

## Problemas comuns

| Sintoma | Solução |
|---|---|
| "Arquivo `lmodern.sty` (ou outro `.sty`) não encontrado" | **Windows:** deixe o MiKTeX instalar sozinho (opção "on the fly"). **Mac com BasicTeX:** rode o `tlmgr install` da nota acima |
| O verso saiu de cabeça para baixo | Na impressão duplex, troque para **"virar na borda longa"** (long-edge) |
| As cartas estão menores/maiores | A escala não estava em 100 % — refira "Tamanho real" |
| Mudei um texto e o PDF não atualizou | Compile **duas vezes** com o pdfLaTeX |
| Acentos ficaram estranhos | Confira se abriu o arquivo `.tex` como UTF-8 (padrão nos editores atuais) |

## Quer criar suas próprias cartas?

Edite `cartas/cartas.tex` com qualquer editor de texto (VS Code, Bloco de Notas,
TeXworks mesmo), copie uma carta existente, troque os textos e recompile. O
modelo e as regras de equilíbrio do baralho estão em
[CONTRIBUTING.md](../CONTRIBUTING.md). Toda carta nova precisa citar a fonte do
fato em [docs/HISTORIA.md](HISTORIA.md) — é a regra de ouro do projeto.

---

Dúvidas? Abra uma *issue* no GitHub que a comunidade responde.
