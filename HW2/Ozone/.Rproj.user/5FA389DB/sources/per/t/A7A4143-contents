# Data frame à partir d'un fichier csv
path="http://www.math.univ-toulouse.fr/~besse/Wikistat/data/"
#path=""
ozone=read.table(paste(path,"ozone.csv",sep=""),sep=";",dec=",",header=T)
# vérification
summary(ozone)
# Supprimer la variable inutile "obs"
ozone=ozone[,-1]

summary(ozone)

sapply(ozone[,-c(12,13)], mean)  # moyennes

sapply(ozone[,-c(12,13)], sd)    # écarts-types


# dimensions des graphiques
options(repr.plot.width=4, repr.plot.height=4)
boxplot(ozone[,2:4]) # boîtes par groupe

boxplot(ozone[,5:7])

boxplot(ozone[,8:10])

boxplot(ozone[,c(1,11)])


hist(ozone$maxO3)
hist(ozone$maxO3v)
hist(log(ozone$maxO3))
hist(log(ozone$maxO3v))
boxplot(log(ozone[,c(1,11)]))


barplot(table(ozone$pluie))
barplot(table(ozone$vent))
pie(table(ozone$vent))


options(repr.plot.width=8, repr.plot.height=8)
pairs(ozone[,1:11])

options(repr.plot.width=4, repr.plot.height=4)
plot(maxO3~maxO3v,data=ozone)

plot(log(maxO3)~log(maxO3v),data=ozone)
