#setwd("/Users/ukohank517/workspace/rstudio/fuji/Q8")  # csv�̏ꏊ��ݒ�


res60M <- list()
for(i in 1:length(res2)){
  if(!is.na(okinawa$Sex[i]) & okinawa$Sex[i] == "�j��" & !is.na(okinawa$Age[i]) & okinawa$Age[i] == "�U�O��"){
    res60M[[i]] <-  res2[[i]]
    
  }else{  res60M[[i]] <- NA }
}


# ����Ɗό��C���s �͏��������10
res60M1 <- unlist(res60M) [unlist(res60M) != "����" & unlist(res60M) != "�ό�"& unlist(res60M) != "���s"]
res60M.t <- table(res60M1)
res60M.t <- res60M.t [rev(order(res60M.t))][1:10]
res60M.t

## ���� �ǂ�   ��   �� �K�v �悤 ���� ���H   �n ���� 
##  10    9    9    8    7    7    6    5    5    5 




############ 50 

res50F <- list()
for(i in 1:length(res2)){
  if(!is.na(okinawa$Sex[i]) & okinawa$Sex[i] == "����" & !is.na(okinawa$Age[i]) & okinawa$Age[i] == "�T�O��"){
    
    res50F[[i]] <-  res2[[i]]
  }else{  res50F[[i]] <- NA }
}



## ����Ɗό��C���s �͏��������10
res50F1 <- unlist(res50F) [unlist(res50F) != "����" & unlist(res50F) != "�ό�"& unlist(res50F) != "���s"]
res50F.t <- table(res50F1)
res50F.t <- res50F.t [rev(order(res50F.t))][1:10]
res50F.t

##     �l   ����     �� �ق���     �C   �ǂ� ������     �X   ����     �� 
##     18     13     12     11     10      9      9      9      9      6 


#####
res50M <- list()
for(i in 1:length(res2)){
  if(!is.na(okinawa$Sex[i]) & okinawa$Sex[i] == "�j��" & !is.na(okinawa$Age[i]) & okinawa$Age[i] == "�T�O��"){
    res50M[[i]] <-  res2[[i]]
  }else{  res50M[[i]] <- NA }
}



# ����Ɗό��C���s �͏��������10
res50M1 <- unlist(res50M) [unlist(res50M) != "����" & unlist(res50M) != "�ό�"& unlist(res50M) != "���s" ]
res50M.t <- table(res50M1)
res50M.t <- res50M.t [rev(order(res50M.t))][1:10]
res50M.t

##     ��   ���H   ���R     ��   �o�X �₷��   ���� ������   ���     �l 
##      8      7      6      6      5      5      4      4      4      4



############## 40


res40F <- list()
for(i in 1:length(res2)){
  if(!is.na(okinawa$Sex[i]) & okinawa$Sex[i] == "����" & !is.na(okinawa$Age[i]) & okinawa$Age[i] == "�S�O��"){
    res40F[[i]] <-  res2[[i]]
  }else{  res40F[[i]] <- NA }
}



# ����Ɗό��C���s �͏��������10
res40F1 <- unlist(res40F) [unlist(res40F) != "����" & unlist(res40F) != "�ό�"& unlist(res40F) != "���s" ]
res40F.t <- table(res40F1)
res40F.t <- res40F.t [rev(order(res40F.t))][1:10]
res40F.t 

##     ��   ����     �C   �o�X �ق���   ����     ��     ��     �O   ���� 
##      8      5      5      5      5      5      4      4      4      4


res40M <- list()
for(i in 1:length(res2)){
  if(!is.na(okinawa$Sex[i]) & okinawa$Sex[i] == "�j��" & !is.na(okinawa$Age[i]) & okinawa$Age[i] == "�S�O��"){
    res40M[[i]] <-  res2[[i]]
  }else{  res40M[[i]] <- NA }
}



# ����Ɗό��C���s �͏��������10
res40M1 <- unlist(res40M) [unlist(res40M) != "����" & unlist(res40M) != "�ό�"& unlist(res40M) != "���s" ]
res40M.t <- table(res40M1)
res40M.t <- res40M.t [rev(order(res40M.t))][1:10]
res40M.t

##       ���R       �ǂ�     �~���� ���m���[��       �o�X         ��         �� 
##          7          6          6          5          5          5          5 
##         ��         �C       ���� 
##          4          4          3 


############## 30

res30F <- list()
for(i in 1:length(res2)){
  if(!is.na(okinawa$Sex[i]) & okinawa$Sex[i] == "����" & !is.na(okinawa$Age[i]) & okinawa$Age[i] == "�R�O��"){
    res30F[[i]] <-  res2[[i]]
  }else{  res30F[[i]] <- NA }
}


# ����Ɗό��C���s �͏��������10
res30F1 <- unlist(res30F) [unlist(res30F) != "����" & unlist(res30F) != "�ό�"& unlist(res30F) != "���s" ]
res30F.t <- table(res30F1)
res30F.t <- res30F.t [rev(order(res30F.t))][1:10]
res30F.t 

##     �l     �C     �� �ق��� ���ꂢ   ����   ���� �z�e��   �悤   ���� 
##     11     11      9      8      8      8      7      7      6      6


## 
res30M <- list()
for(i in 1:length(res2)){
  if(!is.na(okinawa$Sex[i]) & okinawa$Sex[i] == "�j��" & !is.na(okinawa$Age[i]) & okinawa$Age[i] == "�R�O��"){
    res30M[[i]] <-  res2[[i]]# 
  }else{  res30M[[i]] <- NA }
}


# ����Ɗό��C���s �͏��������10
res30M1 <- unlist(res30M) [unlist(res30M) != "����" & unlist(res30M) != "�ό�"& unlist(res30M) != "���s" ]
res30M.t <- table(res30M1)
res30M.t <- res30M.t [rev(order(res30M.t))][1:10]
res30M.t 

##     �l   �a��   ��� �₷��   �o�X   ����   �k��   �ߔe     �X     �� 
##      7      5      5      5      4      4      3      3      3      3


############ 20

res20F <- list()
for(i in 1:length(res2)){
  if(!is.na(okinawa$Sex[i]) & okinawa$Sex[i] == "����" & !is.na(okinawa$Age[i]) & okinawa$Age[i] == "�Q�O��"){
    res20F[[i]] <-  res2[[i]]# 
  }else{  res20F[[i]] <- NA }
}




# ����Ɗό��C���s �͏��������10
res20F1 <- unlist(res20F) [unlist(res20F) != "����" & unlist(res20F) != "�ό�"& unlist(res20F) != "���s" ]
res20F.t <- table(res20F1)
res20F.t <- res20F.t [rev(order(res20F.t))][1:10]
res20F.t 

##       ��       �l       �C �^�N�V�[     ����     �^�]   �ق���     ���� 
##       15       11       10        9        7        7        7        7 
##     ����     ���� 
##        7        6

#### 

res20M <- list()
for(i in 1:length(res2)){
  if(!is.na(okinawa$Sex[i]) & okinawa$Sex[i] == "�j��" & !is.na(okinawa$Age[i]) & okinawa$Age[i] == "�Q�O��"){
    res20M[[i]] <-  res2[[i]]
  }else{  res20M[[i]] <- NA }
}


# ����Ɗό��C���s �͏��������10
res20M1 <- unlist(res20M) [unlist(res20M) != "����" & unlist(res20M) != "�ό�"& unlist(res20M) != "���s" ]
res20M.t <- table(res20M1)
res20M.t <- res20M.t [rev(order(res20M.t))][1:10]
res20M.t 

##   �o�X   �[��   �^�] �ق���     ��   �ǂ�     ��   ����     ��     �� 
##      4      3      3      3      3      2      2      2      2      2 
## #

#setwd("/Users/ukohank517")              # ���܂��Ȃ�
