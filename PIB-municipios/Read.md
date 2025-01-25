# PIB por Setor

Este projeto tem como objetivo analisar e visualizar a participação dos diferentes setores na economia de Santo André - SP utilizando dados do PIB (Produto Interno Bruto) a preços correntes, extraídos do IBGE (Instituto Brasileiro de Geografia e Estatística) através da API do SIDRA.

## Estrutura do Projeto

O projeto é dividido em seções que incluem a extração de dados, transformação dos mesmos, e a visualização dos resultados utilizando gráficos.

### Extração de Dados

Utilizamos a função `get_sidra` do pacote `sidrar` para obter os dados diretamente da API do SIDRA. Os dados incluem o PIB total e os valores adicionados brutos a preços correntes para os seguintes setores:
- Agropecuária
- Indústria
- Serviços (público e privado)
- Impostos e subsídios

### Transformação de Dados

Os dados extraídos são processados e organizados para facilitar a análise e visualização. As variáveis são renomeadas para facilitar a leitura dos gráficos.

### Visualização

Foram gerados dois tipos de gráficos:
1. **Gráfico de Barras:** Mostra o valor do PIB por setor ao longo dos anos.
2. **Gráfico de Área:** Mostra a proporção de cada setor no PIB total ao longo dos anos.

## Requisitos

Para executar este projeto, você precisará dos seguintes pacotes R:
- `dplyr`
- `tidyverse`
- `sidrar`
- `ggplot2`

## Como Utilizar

1. Clone este repositório em sua máquina local:
   ```bash
   git clone https://github.com/seu-usuario/pib-por-setor.git
