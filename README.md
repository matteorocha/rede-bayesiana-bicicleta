# Diagnóstico Bayesiano de Farol de Bicicleta

Este repositório contém uma atividade de Inteligência Artificial que explora o uso de **redes bayesianas** e **programação probabilística com ProbLog** para diagnosticar o funcionamento de um farol de bicicleta alimentado por dínamo.

---

## :bulb: Conceitos Envolvidos

- **Redes Bayesianas**: modelos probabilísticos representados por grafos direcionados acíclicos, que expressam relações de causa e efeito entre variáveis.
- **Independência Condicional**: permite simplificar a modelagem ao eliminar dependências desnecessárias.
- **Tabelas de Probabilidade Condicional (CPTs)**: definem as distribuições condicionais entre variáveis.
- **ProbLog**: linguagem de programação baseada em Prolog com suporte a incerteza, usada para consultas probabilísticas.

---

## :page_facing_up: Estrutura dos Arquivos

- [`analise.md`](analise.md): explicação detalhada da questão 1 (itens de **(a)** a **(e)**), com grafo causal, cálculos manuais e justificativas.
- [`codigo.pl`](codigo.pl): implementação completa da rede bayesiana em **ProbLog**, com query e evidência.

---

## :hammer_and_wrench: Como Executar

### Usando SWISH (online)
1. Acesse: [https://dtai.cs.kuleuven.be/problog/editor.html](https://dtai.cs.kuleuven.be/problog/editor.html)
2. Copie o conteúdo de `codigo.pl` e cole no editor.
3. Clique em "Run" (foguete).

### Localmente (Linux)
```bash
# Instale em ambiente virtual (recomendado)
python3 -m venv .venv
source .venv/bin/activate
pip install problog
problog codigo.pl
```

---

## :books: Referências
- [Tutorial de ProbLog](https://dtai.cs.kuleuven.be/problog/tutorial/basic/02_bayes.html)
- Bratko, I. (Prolog Programming for Artificial Intelligence)
- PEP 668 (gestão de ambientes Python em sistemas Linux)
