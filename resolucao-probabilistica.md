# Resolução - Diagnóstico Bayesiano

## Nome e Matrícula

- Matheus Rocha Canto
- 22250353

# 1° Questão


## (a) Rede de Causalidade
A estrutura causal entre as variáveis é representada por um grafo direcionado acíclico (DAG):

```
Str     Flw     B       K
          \      \     /
           R      \   /
             \     V
                \  |
                  Li
```

### Descrição das variáveis:
- `Str`: Condição da rua (dry, wet, snow_covered)
- `Flw`: Falta de lubrificação
- `R`: Resistência ao movimento
- `V`: Velocidade da bicicleta
- `B`: Bateria
- `K`: Conector
- `Li`: Luz ligada

---

## (b) Tabelas de Probabilidade Condicional (CPTs)

```problog
P(Str):
  dry: 0.6
  wet: 0.1
  snow_covered: 0.3

P(Flw):
  true: 0.3
  false: 0.7

P(R | Flw):
  flw = true  -> r = true: 0.8
  flw = false -> r = true: 0.25

P(V | R):
  r = true  -> v = true: 0.95
  r = false -> v = true: 0.1

P(B):
  true: 0.85

P(K):
  true: 0.65

P(Li | V, B, K):
  v=T, b=T, k=T -> 0.98
  v=T, b=T, k=F -> 0.4
  v=T, b=F, k=T -> 0.5
  v=T, b=F, k=F -> 0.3
  v=F, b=T, k=T -> 0.2
  v=F, b=F, k=F -> 0.05
```

---

## (c) Justificativa dos Valores
Os valores foram atribuídos de forma aleatória, porém coerente com a semântica do problema:
- `Flw` aumenta a chance de `R` ser alta.
- `R` alta facilita `V` alta.
- `V`, `B` e `K` devem estar bons para `Li` estar ligada.

---

## (d) Independência entre `Str` e `Li`
Como:
- `P(V | R, Str) = P(V | R)` (Str é irrelevante para V dado R)
- `P(Li | V, R) = P(Li | V)` (Li depende apenas de V, B e K)

Então:
- `Str` é **independente** de `Li` tanto direta quanto indiretamente.

---

## (e) Cálculo de P(V = true | Str = snow_covered)
Como:
- `P(V|Str) = P(V)` pois Str e V são independentes dado R

1. Calcular P(R=true):
```
P(R=true) = 0.3*0.8 + 0.7*0.25 = 0.24 + 0.175 = 0.415
```

2. P(V=true):
```
= 0.415*0.95 + 0.585*0.1
= 0.39425 + 0.0585
= **0.45275**
```

**Resultado final:**
```prolog
P(V = true | Str = snow_covered) = 0.45275
