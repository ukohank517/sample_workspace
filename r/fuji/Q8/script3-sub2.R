#setwd("/Users/ukohank517/workspace/rstudio/fuji/Q8")  # csvの場所を設定

res60M1[which(res60M1 == "きれい")] <- "美しい"
res60M1[which(res60M1 == "欲しい")] <- "ほしい"
res60M1[which(res60M1 == "いい")] <- "良い"
res60M.t2 <- table(res60M1)
res60M.t3 <- res60M.t2[names(res60M.t2) %in%  okinawa.lab] #row.names(okinawa.t)]


res50F1[which(res50F1 == "きれい")] <- "美しい"
res50F1[which(res50F1 == "欲しい")] <- "ほしい"
res50F1[which(res50F1 == "いい")] <- "良い"
res50F.t2 <- table(res50F1)
res50F.t3 <- res50F.t2[names(res50F.t2) %in%  okinawa.lab] #row.names(okinawa.t)]


res50M1[which(res50M1 == "きれい")] <- "美しい"
res50M1[which(res50M1 == "欲しい")] <- "ほしい"
res50M1[which(res50M1 == "いい")] <- "良い"
res50M.t2 <- table(res50M1)
res50M.t3 <- res50M.t2[names(res50M.t2) %in%  okinawa.lab] #row.names(okinawa.t)]


res40F1[which(res40F1 == "きれい")] <- "美しい"
res40F1[which(res40F1 == "欲しい")] <- "ほしい"
res40F1[which(res40F1 == "いい")] <- "良い"
res40F.t2 <- table(res40F1)
res40F.t3 <- res40F.t2[names(res40F.t2) %in%  okinawa.lab] #row.names(okinawa.t)]


res40M1[which(res40M1 == "きれい")] <- "美しい"
res40M1[which(res40M1 == "欲しい")] <- "ほしい"
res40M1[which(res40M1 == "いい")] <- "良い"
res40M.t2 <- table(res40M1)
res40M.t3 <- res40M.t2[names(res40M.t2) %in%  okinawa.lab] #row.names(okinawa.t)]

res30F1[which(res30F1 == "きれい")] <- "美しい"
res30F1[which(res30F1 == "欲しい")] <- "ほしい"
res30F1[which(res30F1 == "いい")] <- "良い"
res30F.t2 <- table(res30F1)
res30F.t3 <- res30F.t2[names(res30F.t2) %in%  okinawa.lab] #row.names(okinawa.t)]


res30M1[which(res30M1 == "きれい")] <- "美しい"
res30M1[which(res30M1 == "欲しい")] <- "ほしい"
res30M1[which(res30M1 == "いい")] <- "良い"
res30M.t2 <- table(res30M1)
res30M.t3 <- res30M.t2[names(res30M.t2) %in% okinawa.lab] # row.names(okinawa.t)]


res20F1[which(res20F1 == "きれい")] <- "美しい"
res20F1[which(res20F1 == "欲しい")] <- "ほしい"
res20F1[which(res20F1 == "いい")] <- "良い"
res20F.t2 <- table(res20F1)
res20F.t3 <- res20F.t2[names(res20F.t2) %in%  okinawa.lab] #row.names(okinawa.t)]


res20M1[which(res20M1 == "きれい")] <- "美しい"
res20M1[which(res20M1 == "欲しい")] <- "ほしい"
res20M1[which(res20M1 == "いい")] <- "良い"
res20M.t2 <- table(res20M1)
res20M.t3 <- res20M.t2[names(res20M.t2) %in%  okinawa.lab] #row.names(okinawa.t)]

#setwd("/Users/ukohank517")              # おまじない

