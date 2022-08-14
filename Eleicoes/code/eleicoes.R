##================================================================================================
##                                                                                              
##    Site: https://electionsbr.com/                                                                                                                                                 ##
##    Objetivo: Tratamento dos dados da ultima eleicao
##    Pacotes: electionsBR 
##    Meireles, Fernando; Silva, Denisson; Costa, Beatriz. (2016). electionsBR: R functions to 
##    download and clean Brazilian electoral data. URL: http://electionsbr.com/
##
##    prof. Steven Dutt-Ross                          
##    UNIRIO           
##================================================================================================


library(electionsBR)
library(dplyr)

df <- candidate_local(2020)

names(df)

table(df$CODIGO_CARGO)
table(df$DESCRICAO_CARGO)

table(df$CODIGO_CARGO,df$DESCRICAO_CARGO)


prefeito <- df %>%  filter(CODIGO_CARGO==11)
vice <- df %>%  filter(CODIGO_CARGO==12)
vereador<- df %>%  filter(CODIGO_CARGO==13)

table(vice$NUM_TURNO)

prefeito_1Turno <- prefeito %>%  filter(NUM_TURNO==1)
prefeito_2Turno <- prefeito %>%  filter(NUM_TURNO==2)


vice_1Turno <- vice %>%  filter(NUM_TURNO==1)
vice_2Turno <- vice %>%  filter(NUM_TURNO==2)


remove(vice)
vice <- df %>%  filter(CODIGO_CARGO==12)

save(prefeito_1Turno,file = 'C:/Users/Hp/Documents/GitHub/Base_de_dados/Eleicoes/prefeito_1Turno.Rdata')
save(prefeito_2Turno,file=  'C:/Users/Hp/Documents/GitHub/Base_de_dados/Eleicoes/prefeito_2Turno.Rdata')
  
save(vice_1Turno,file=  'C:/Users/Hp/Documents/GitHub/Base_de_dados/Eleicoes/vice_1Turno.Rdata')
save(vice_2Turno,file=  'C:/Users/Hp/Documents/GitHub/Base_de_dados/Eleicoes/vice_2Turno.Rdata')
  
save(vereador,file=  'C:/Users/Hp/Documents/GitHub/Base_de_dados/Eleicoes/vereador.Rdata')

eleicoes<-list(prefeito_1Turno,prefeito_2Turno,vice_1Turno,vice_2Turno,vereador)
writexl::write_xlsx(eleicoes,path = "C:/Users/Hp/Documents/GitHub/Base_de_dados/Eleicoes/eleicoes_2020.xlsx")

eleicoes<-list(prefeito_1Turno,prefeito_2Turno,vice_1Turno,vice_2Turno)
writexl::write_xlsx(eleicoes,path = "C:/Users/Hp/Documents/GitHub/Base_de_dados/Eleicoes/eleicoes_2020.xlsx")
