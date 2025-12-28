
library(tidyverse)
library(ggplot2)
library(scales)
library(showtext)
library(sysfonts)
library(dplyr)

font_add_google("Ubuntu", "ubuntu")
showtext_auto()

options(scipen = 999)

dirbi.renuncia <- read.csv("dirbi-renuncia-por-regime-2025.csv")

op = dirbi.renuncia %>% 
  filter(municipio == "OURO PRETO")

op.selecao = op %>% 
  select(cnpj, nome, cnaePrincipal, periodoApuracao, 
         qtdBeneficiosComValor, 
         valorConsolidado)

op.selecao = op.selecao %>% 
  mutate(valorConsolidado = as.numeric(gsub(",", ".", 
                                            op.selecao$valorConsolidado)))


sum(op.selecao$valorConsolidado)

dados_plot <- op.selecao %>% 
  group_by(nome) %>% 
  summarise(
    renuncia_total = sum(valorConsolidado, na.rm = TRUE)
  ) %>% 
  arrange(desc(renuncia_total))


ggplot(dados_plot,
       aes(
         x = reorder(nome, renuncia_total),
         y = renuncia_total
       )) +
  geom_col(fill = "#007878") +
  geom_text(
    aes(label = scales::label_number(
      big.mark = ".",
      decimal.mark = ",",
      prefix = "R$ "
    )(renuncia_total)),
    hjust = -0.05,
    size = 3,
    family = "ubuntu"
  ) +
  coord_flip() +
  scale_y_continuous(
    labels = scales::label_number(
      big.mark = ".",
      decimal.mark = ",",
      prefix = "R$ "
    ),
    expand = expansion(mult = c(0, 0.15))
  ) +
  labs(
    title = "Renúncia fiscal por empresa",
    subtitle = "Município de Ouro Preto (MG) – 2025",
    x = "",
    y = "Valor total da renúncia fiscal",
    caption = "Fonte: Receita Federal do Brasil (RFB). \nDeclaração de Incentivos, Renúncias, Benefícios e Imunidades de Natureza Tributária (DIRBI). \nConjunto de dados Renúncias Fiscais de Tributos Federais, disponível no Portal Brasileiro de Dados Abertos (dados.gov.br). \nArquivo atualizado em 15 de dezembro de 2025. Elaboração - Fábio Rocha"
  ) +
  theme_bw(base_size = 14) +
  theme(
    text = element_text(family = "ubuntu"),
    plot.title = element_text(face = "bold"),
    axis.text.y = element_text(size = 9),
    plot.caption = element_text(size = 8, hjust = 0)
  )
