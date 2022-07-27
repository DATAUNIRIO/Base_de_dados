
# Para saber mais, visite o github
# https://github.com/cienciadedatos/dados

# remotes::install_github("cienciadedatos/dados")

library(dados)

aeroportos<- dados::aeroportos
arremesadores<- dados::arremesadores
casas <- dados::casas
questionario <- dados::questionario
dados_starwars <- dados::dados_starwars
salarios<- dados::salarios
premios_gerentes<- dados::premios_gerentes
dados_gapminder<- dados::dados_gapminder
gerentes<- dados::gerentes

write.csv(aeroportos,"C:/Users/Hp/Documents/GitHub/Base_de_dados/cienciadedatos_dados/aeroportos.csv", row.names = FALSE)
save(aeroportos,file="C:/Users/Hp/Documents/GitHub/Base_de_dados/cienciadedatos_dados/aeroportos.Rdata")

write.csv(arremesadores,"C:/Users/Hp/Documents/GitHub/Base_de_dados/cienciadedatos_dados/arremesadores.csv", row.names = FALSE)
save(arremesadores,file="C:/Users/Hp/Documents/GitHub/Base_de_dados/cienciadedatos_dados/arremesadores.Rdata")

write.csv(casas,"C:/Users/Hp/Documents/GitHub/Base_de_dados/cienciadedatos_dados/casas.csv", row.names = FALSE)
save(casas,file="C:/Users/Hp/Documents/GitHub/Base_de_dados/cienciadedatos_dados/casas.Rdata")

write.csv(questionario,"C:/Users/Hp/Documents/GitHub/Base_de_dados/cienciadedatos_dados/questionario.csv", row.names = FALSE)
save(questionario,file="C:/Users/Hp/Documents/GitHub/Base_de_dados/cienciadedatos_dados/questionario.Rdata")

save(dados_starwars,file="C:/Users/Hp/Documents/GitHub/Base_de_dados/cienciadedatos_dados/dados_starwars.Rdata")
names(dados_starwars)
dados_starwars <-dados_starwars[,c("nome","altura","massa","cor_do_cabelo","cor_da_pele","cor_dos_olhos",  
                  "ano_nascimento", "sexo_biologico",  "genero","planeta_natal","especie")]
write.csv(dados_starwars,"C:/Users/Hp/Documents/GitHub/Base_de_dados/cienciadedatos_dados/dados_starwars.csv", row.names = FALSE)
 
write.csv(salarios,"C:/Users/Hp/Documents/GitHub/Base_de_dados/cienciadedatos_dados/salarios.csv", row.names = FALSE)
save(salarios,file="C:/Users/Hp/Documents/GitHub/Base_de_dados/cienciadedatos_dados/salarios.Rdata")

write.csv(premios_gerentes,"C:/Users/Hp/Documents/GitHub/Base_de_dados/cienciadedatos_dados/premios_gerentes.csv", row.names = FALSE)
save(premios_gerentes,file="C:/Users/Hp/Documents/GitHub/Base_de_dados/cienciadedatos_dados/premios_gerentes.Rdata")

write.csv(premios_gerentes,"C:/Users/Hp/Documents/GitHub/Base_de_dados/cienciadedatos_dados/premios_gerentes.csv", row.names = FALSE)
save(premios_gerentes,file="C:/Users/Hp/Documents/GitHub/Base_de_dados/cienciadedatos_dados/premios_gerentes.Rdata")

write.csv(gerentes,"C:/Users/Hp/Documents/GitHub/Base_de_dados/cienciadedatos_dados/gerentes.csv", row.names = FALSE)
save(gerentes,file="C:/Users/Hp/Documents/GitHub/Base_de_dados/cienciadedatos_dados/gerentes.Rdata")

write.csv(dados_gapminder,"C:/Users/Hp/Documents/GitHub/Base_de_dados/cienciadedatos_dados/dados_gapminder.csv", row.names = FALSE)
save(dados_gapminder,file="C:/Users/Hp/Documents/GitHub/Base_de_dados/cienciadedatos_dados/dados_gapminder.Rdata")




pixar_bilheteria       <- dados::pixar_bilheteria
pixar_avalicao_publico <- dados::pixar_avalicao_publico
pixar_oscars           <- dados::pixar_oscars
pixar_filmes           <- dados::pixar_filmes
pixar_generos          <- dados::pixar_generos

save(pixar_bilheteria,file="C:/Users/Hp/Documents/GitHub/Base_de_dados/cienciadedatos_dados/pixar_bilheteria.Rdata")
save(pixar_avalicao_publico,file="C:/Users/Hp/Documents/GitHub/Base_de_dados/cienciadedatos_dados/pixar_avalicao_publico.Rdata")
save(pixar_oscars,file="C:/Users/Hp/Documents/GitHub/Base_de_dados/cienciadedatos_dados/pixar_oscars.Rdata")
save(pixar_filmes,file="C:/Users/Hp/Documents/GitHub/Base_de_dados/cienciadedatos_dados/pixar_filmes.Rdata")
save(pixar_generos,file="C:/Users/Hp/Documents/GitHub/Base_de_dados/cienciadedatos_dados/pixar_generos.Rdata")

