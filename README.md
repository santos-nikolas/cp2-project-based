# Check Point 2: Caixa Mecânica com Engrenagens
## Disciplina: Project-based Maker Lab | Engenharia de Software - FIAP

Este repositório contém a documentação completa para a montagem e análise técnica de uma caixa mecânica funcional (Iris Box) utilizando sistemas de engrenagens. O projeto aplica conceitos de mecânica, medição de precisão com paquímetro e modelagem 3D paramétrica.

---

## 👥 Integrantes do Grupo
*   Nikolas Rodrigues Moura dos Santos (RM551566)
*   Rodrigo Brasileiro (RM98952)
*   Bruno Eduardo Caputo Paulino (RM558303)

**Profª Responsável:** Me. Gedeane G.S. Kenshima

---

## 📦 Conteúdo do Kit
O conjunto utilizado nas fotos é composto por peças impressas em 3D (Cores: Rosa, Branco, Azul e Amarelo):
*   **02** Bases circulares (suporte das engrenagens)
*   **01** Tampa superior com design de circuito
*   **10** Engrenagens (1 central azul, demais rosas e amarelas)
*   **02** Eixos centrais de travamento
*   **05** Gavetas/Pétalas móveis (Rosa e Branco)

---

## 📐 Especificações e Medidas
Realizamos a medição técnica utilizando um paquímetro digital para validar as tolerâncias de impressão:

| Peça | Atributo | Medida Real (mm) |
| :--- | :--- | :--- |
| **Tampa** | Espessura | 4.0 mm |
| **Caixa** | Diâmetro dos furos | 5.2 mm |
| **Eixos** | Diâmetro e Comprimento | Ø 5.0 mm / L 12.0 mm |
| **Engrenagem** | Largura/Espessura | 6.0 mm |
| **Eixos** | Distância entre centros | 22.5 mm |
| **Alojamento** | Profundidade interna | 30.0 mm |

---

## 🛠 Guia de Montagem (Passo a Passo)

### 1. Sincronização das Engrenagens
O primeiro passo consiste em posicionar a engrenagem central (azul) e distribuir as engrenagens periféricas (rosas e amarelas) sobre a base. É crucial que os dentes estejam perfeitamente alinhados para que o torque seja distribuído igualmente.

> ![Sincronização de Engrenagens](fotos/passo1_engrenagens.jpg) *(Referência: Foto das engrenagens coloridas em estrela)*

### 2. Montagem da Estrutura de Acionamento
Encaixamos a base de suporte superior. Note que os eixos das engrenagens periféricas devem atravessar os furos da base branca para permitir o movimento externo.

> ![Base de Acionamento](fotos/passo2_base.jpg) *(Referência: Foto segurando a base branca com eixos coloridos)*

### 3. Instalação das Pétalas (Gavetas)
As 5 pétalas são encaixadas nos pinos das engrenagens periféricas. Cada pétala possui um trilho de guia que permite o movimento de expansão (abertura) e contração (fechamento).

> ![Instalação das Pétalas](fotos/passo3_petalas.jpg) *(Referência: Foto encaixando as peças rosas/brancas na lateral)*

### 4. Finalização e Teste de Torque
Colocamos a tampa decorada e o manipulador central. Ao girar o manipulador, o sistema de engrenagens converte o movimento rotacional em movimento linear das pétalas, abrindo a caixa.

> ![Produto Finalizado](fotos/passo4_final.jpg) *(Referência: Foto da caixa fechada sendo segurada pelas mãos)*

---

## 🔍 Observações Técnicas (Checklist)
*   **Encaixes:** Os encaixes apresentaram-se justos (press-fit), garantindo que as engrenagens não deslizem fora do eixo durante a operação.
*   **Rotação:** O sistema apresentou baixa fricção, permitindo a abertura completa com esforço mínimo.
*   **Engate:** Não houve "pulo" de dentes, indicando que a distância entre centros medida (22.5mm) está correta para o módulo das engrenagens.
*   **Trava:** O movimento é fluido, sem pontos de travamento mecânico nas extremidades do curso.

---

## 💻 Modelagem 3D
Para este Check Point, modelamos a **Engrenagem Periférica** utilizando **OpenSCAD**.

*   **Destaque técnico:** O código foi desenvolvido de forma paramétrica. Utilizamos um `for loop` para distribuir os dentes radialmente e uma operação de `difference()` para criar o furo do eixo com a tolerância exata de 0.2mm (folga necessária para rotação livre).
*   **Otimização:** A peça foi desenhada para ser impressa sem suportes, com base plana.

> ![Render Modelagem 3D](modelagem/render_engrenagem.png) *(Adicione aqui o print do OpenSCAD que você gerou)*

---

## 📂 Organização do Repositório
*   `/fotos`: Imagens reais da montagem realizadas pelo grupo.
*   `/modelagem`: Arquivo `engrenagem_periferica.scad` com o código fonte.
*   `README.md`: Documentação completa do projeto.

---
© 2026 FIAP - Engenharia de Software. Documentação para fins acadêmicos.
