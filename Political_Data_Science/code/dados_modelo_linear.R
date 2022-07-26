#remotes::install_github('arcruz0/politicalds')

library(politicalds)
data("welfare")

names(welfare)

original <-c("country_id", "year","population","gini","sector_dualism","gdp","foreign_inv","ethnic_diversity", "regime_type","education_budget", "health_budget","socialsec_budget","legislative_bal","repression")

nomes <-c("id_pais","ano","populacao",
"gini","dualismo_setorial","PIB",
"investimento_estrangeiro","diversidade_etnica","democracia_tipo_de_regime",
"despesas_educacao","despesas_saude","despesas_seguranca_social",
"equilibrio_legislativo","repressao")

codebook <- c("id_pais","ano","populacao",
"gini","Dualismo setorial (refere-se à coexistência de um setor tradicional de baixa produtividade e um setor moderno de alta produtividade)",
"PIB",
"Investimento Estrangeiro Direto lucro liquido em percentual do PIB",
"Diversidade étnica (variável fictícia codificada como 1 quando pelo menos 20%, mas não mais do que 80% da população é etnicamente diversa)",
"Democracia (tipo de regime)",
"Despesas com educação (como porcentagem do PIB)",
"Despesas com saúde (como porcentagem do PIB)",
"Despesas da segurança social (em percentagem do PIB)",
"Equilíbrio legislativo - equilíbrio entre os poderes do Estado",
"Repressão")

names(welfare) <- nomes

attributes(welfare) 
attributes(welfare)$label <-codebook

attributes(welfare) 

desigualdade <- welfare

#Tentaremos estimar qual é o efeito dos gastos com educação nos 
#níveis de desigualdade nos países da América Latina e do Caribe.


write.csv(desigualdade,"C:/Users/Hp/Documents/GitHub/Base_de_dados/Political_Data_Science/desigualdade.csv", row.names = FALSE)

save(desigualdade,file="C:/Users/Hp/Documents/GitHub/Base_de_dados/Political_Data_Science/desigualdade.Rdata")





