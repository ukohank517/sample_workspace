#setwd("/Users/ukohank517/workspace/rstudio/fuji/Q8")  # csv�̏ꏊ��ݒ�

res60M1[which(res60M1 == "���ꂢ")] <- "������"
res60M1[which(res60M1 == "�~����")] <- "�ق���"
res60M1[which(res60M1 == "����")] <- "�ǂ�"
res60M.t2 <- table(res60M1)
res60M.t3 <- res60M.t2[names(res60M.t2) %in%  okinawa.lab] #row.names(okinawa.t)]


res50F1[which(res50F1 == "���ꂢ")] <- "������"
res50F1[which(res50F1 == "�~����")] <- "�ق���"
res50F1[which(res50F1 == "����")] <- "�ǂ�"
res50F.t2 <- table(res50F1)
res50F.t3 <- res50F.t2[names(res50F.t2) %in%  okinawa.lab] #row.names(okinawa.t)]


res50M1[which(res50M1 == "���ꂢ")] <- "������"
res50M1[which(res50M1 == "�~����")] <- "�ق���"
res50M1[which(res50M1 == "����")] <- "�ǂ�"
res50M.t2 <- table(res50M1)
res50M.t3 <- res50M.t2[names(res50M.t2) %in%  okinawa.lab] #row.names(okinawa.t)]


res40F1[which(res40F1 == "���ꂢ")] <- "������"
res40F1[which(res40F1 == "�~����")] <- "�ق���"
res40F1[which(res40F1 == "����")] <- "�ǂ�"
res40F.t2 <- table(res40F1)
res40F.t3 <- res40F.t2[names(res40F.t2) %in%  okinawa.lab] #row.names(okinawa.t)]


res40M1[which(res40M1 == "���ꂢ")] <- "������"
res40M1[which(res40M1 == "�~����")] <- "�ق���"
res40M1[which(res40M1 == "����")] <- "�ǂ�"
res40M.t2 <- table(res40M1)
res40M.t3 <- res40M.t2[names(res40M.t2) %in%  okinawa.lab] #row.names(okinawa.t)]

res30F1[which(res30F1 == "���ꂢ")] <- "������"
res30F1[which(res30F1 == "�~����")] <- "�ق���"
res30F1[which(res30F1 == "����")] <- "�ǂ�"
res30F.t2 <- table(res30F1)
res30F.t3 <- res30F.t2[names(res30F.t2) %in%  okinawa.lab] #row.names(okinawa.t)]


res30M1[which(res30M1 == "���ꂢ")] <- "������"
res30M1[which(res30M1 == "�~����")] <- "�ق���"
res30M1[which(res30M1 == "����")] <- "�ǂ�"
res30M.t2 <- table(res30M1)
res30M.t3 <- res30M.t2[names(res30M.t2) %in% okinawa.lab] # row.names(okinawa.t)]


res20F1[which(res20F1 == "���ꂢ")] <- "������"
res20F1[which(res20F1 == "�~����")] <- "�ق���"
res20F1[which(res20F1 == "����")] <- "�ǂ�"
res20F.t2 <- table(res20F1)
res20F.t3 <- res20F.t2[names(res20F.t2) %in%  okinawa.lab] #row.names(okinawa.t)]


res20M1[which(res20M1 == "���ꂢ")] <- "������"
res20M1[which(res20M1 == "�~����")] <- "�ق���"
res20M1[which(res20M1 == "����")] <- "�ǂ�"
res20M.t2 <- table(res20M1)
res20M.t3 <- res20M.t2[names(res20M.t2) %in%  okinawa.lab] #row.names(okinawa.t)]

#setwd("/Users/ukohank517")              # ���܂��Ȃ�
