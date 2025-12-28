# Renúncia Fiscal por Empresa, 2025

Este repositório apresenta um **exercício de análise e visualização de dados públicos** sobre **renúncia fiscal de tributos federais**, com foco no município de **Ouro Preto (MG)** no ano de **2025**.

A análise utiliza dados da **DIRBI (Declaração de Incentivos, Renúncias, Benefícios e Imunidades de Natureza Tributária)**, disponibilizados pela **Receita Federal do Brasil (RFB)** por meio do **Portal Brasileiro de Dados Abertos (dados.gov.br)**.

O objetivo principal é **organizar, agregar e visualizar** o valor total da renúncia fiscal por empresa no município selecionado.

---

## 📊 Objetivo da Análise

O script tem como finalidades:

* Filtrar os dados de renúncia fiscal para um município específico (Ouro Preto – MG);
* Agregar os valores de renúncia fiscal por empresa;
* Calcular o valor total da renúncia por empresa no período observado;
* Produzir um gráfico de barras horizontal com foco na comunicação clara dos resultados.

Trata-se de um exemplo didático de uso do **R** para análise de dados fiscais e transparência pública.

---

## 📁 Estrutura dos Dados

O script utiliza um arquivo CSV denominado:

```
dirbi-renuncia-por-regime-2025.csv
```

As principais variáveis utilizadas são:

* `municipio`: município da empresa;
* `cnpj`: CNPJ da empresa;
* `nome`: razão social da empresa;
* `cnaePrincipal`: CNAE principal;
* `periodoApuracao`: período de apuração da renúncia;
* `qtdBeneficiosComValor`: quantidade de benefícios declarados;
* `valorConsolidado`: valor da renúncia fiscal declarada.

⚠️ **Observação:** o campo `valorConsolidado` é originalmente importado como texto e convertido para formato numérico no script.

---

## 🛠️ Pacotes Utilizados

O script foi desenvolvido em **R** e utiliza os seguintes pacotes:

* `tidyverse`
* `dplyr`
* `ggplot2`
* `scales`
* `showtext`
* `sysfonts`

A fonte **Ubuntu**, disponibilizada via Google Fonts, é utilizada para padronização visual do gráfico.

---

## 📈 Produto Final

O principal produto do script é um **gráfico de barras horizontal** que apresenta:

* Empresas no eixo vertical;
* Valor total da renúncia fiscal no eixo horizontal;
* Valores formatados em reais (R$);
* Identificação clara da fonte dos dados e do período analisado.

O gráfico foi construído com foco em **legibilidade, transparência e boa prática de visualização de dados**.

---

## 📌 Fonte dos Dados

* **Receita Federal do Brasil (RFB)**
* **DIRBI – Declaração de Incentivos, Renúncias, Benefícios e Imunidades de Natureza Tributária**
* Conjunto de dados: *Renúncias Fiscais de Tributos Federais*
* Portal Brasileiro de Dados Abertos: dados.gov.br
* Arquivo atualizado em **15 de dezembro de 2025**

---

## ⚠️ Observações Importantes

* Os valores apresentados correspondem às **declarações realizadas pelas próprias empresas** à Receita Federal.
* A análise **não avalia mérito, legalidade ou impacto econômico** das renúncias fiscais.
* O objetivo é **exploratório e informativo**, voltado à transparência e à análise de dados públicos.

---

