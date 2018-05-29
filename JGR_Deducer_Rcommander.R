#https://www.r-bloggers.com/getting-into-r-rcommander-jgr-and-deducer/

version

install.packages("installr")
install.packages(c("JGR", "Deducer", "DeducerExtras"))

Sys.setenv(NOAWT=1)

library(JGR)
Sys.unsetenv("NOAWT")

JGR()

#Rcommander
#https://www.youtube.com/watch?v=TGo9F0QyBuE
