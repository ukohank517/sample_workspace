library(RMeCab)                     # �ǂݎ��
setwd("/Users/ukohank517/workspace/rstudio/fuji/Q8")  # csv�̏ꏊ��ݒ�

okinawa <- read.csv(file('H18koe.csv' ,encoding='Shift_JIS')) # ���{�ꕶ���R�[�h�֕ύX


# �f�[�^1��ڂ̎��R�L�q�����`�ԑf���
# RMeCabDF(�f�[�^���A�f�[�^�̗�ԍ��A�`�ԑf���^(1))  ->  �P��ɕ������āA�P��̌g�т�\������B
res <- RMeCabDF(okinawa, "opinion", 1)  # res <- RMeCabDF(okinawa, 1, 1) # �ɓ��� 
length(res)                             # 331   <- 331�s
length(unlist(res))                     # �g�[�N���� 14464   <-  14464�P��
length(unique(unlist(res)))             # �^�C�v��   1966    <-  �d�����Ȃ��P��
res.t <- table(unlist(res))             # 1966               <-  �p�x�\

res.t[rev(order(res.t))][1:10]          # �`�ԑf�̕p�x�Ń\�[�g�A���̏��10�̒P��
                                        # ��Ǔ_�A���A�͂Ȃǂ̏���������



res2 <- list()                          # ��̃��X�g
for(i in 1:length(res)){
  res2[[i]] <-  res[[i]][names(res[[i]]) == "����" | names(res[[i]]) == "�`�e��"]
}                                       # �����ƌ`�e���������o���B names()�ŕi�������m�F

length(unlist(res2))                    # ���o��̃g�[�N���� 5000���炢�i1/3�j

length(unique(unlist(res2)))            # ���o��̃^�C�v��

res2.t <- table(unlist(res2))           
res2.t[ rev(order(res2.t)) ][1:10]
#�u����v�u�ό��v�u���s�v�������̂����R�ł���B���͑Ώۂɂӂ��߂�K�v���Ȃ��B



# �񓚂�N��Ɛ��ʂŕ��ނ��Ă����B
# 60��j�����A50��j�����A...20��j����
# ���ꂼ��̃O���[�v�ŏo���񐔂̑傫���`�ԑf�𒲂ׁA���̕p�x�𐔂���B

res60F <- list()
for(i in 1:length(res2)){
  if(!is.na(okinawa$Sex[i]) & okinawa$Sex[i] == "����" & !is.na(okinawa$Age[i]) & okinawa$Age[i] == "�U�O��"){
    
    res60F[[i]] <-  res2[[i]]
  }else{  res60F[[i]] <- NA }
}
                                        # is.na()�Ŗ���(NA)�𔻕�
                                        
res60F1 <- unlist(res60F) [unlist(res60F) != "����" & unlist(res60F) != "�ό�"& unlist(res60F) != "���s"]
res60F.t <- table(res60F1)              # �d�v�łȂ��`�ԑf���Ȃ�
res60F.t <- res60F.t [rev(order(res60F.t))][1:10]
res60F.t 


# �c���script3-sub����ǂݍ����
source('script3-sub1.R', encoding = 'SHIFT-JIS', echo=TRUE)



# ���x���̍쐬
okinawa.lab <- unique(c(names(res20F.t), names(res20M.t), names(res30F.t), names(res30M.t), names(res40F.t), names(res40M.t),  names(res50F.t), names(res50M.t), names(res60F.t), names(res60M.t) ))
okinawa.lab             ## <- ���y�񐔂��l�����Ȃ��B


 
oki <-  which(okinawa.lab %in%  c("��", "��","����","�Ȃ�","��","��", "�悤", "��","�O","��", "�ߔe",  "����", "��","���","�n", "�[") )
okinawa.lab <- okinawa.lab[ -oki ]           # ��L�v�f�̓��e���폜
okinawa.lab



# �~�������ق����A���ꂢ���������A�������ǂ�
res60F1[which(res60F1 == "���ꂢ")] <- "������"
res60F1[which(res60F1 == "�~����")] <- "�ق���"
res60F1[which(res60F1 == "����")] <- "�ǂ�"
res60F.t2 <- table(res60F1)
res60F.t3 <- res60F.t2[names(res60F.t2) %in% okinawa.lab]
res60F.t3
                                     # which()�ŁA���ꂢ�A�ق����A�����̗v�f�ԍ������o���B



source('script3-sub2.R', encoding = 'SHIFT-JIS', echo=TRUE)






















okinawa.DF <- NULL

okinawa.DF <- data.frame(word = names(res20M.t3), id = rep("20M",length(res20M.t3) ), Freq = as.integer(res20M.t3))
                                            # data.frame() �֐���word, id, Freq�̎O�̗�̏������f�[�^�t���[���ɕϊ�����
                                            # rbind�ŏc����(����)�Ȃ��Ă���
okinawa.DF <- rbind(okinawa.DF,
                    data.frame(word = names(res20F.t3), id = rep("20F", length(res20F.t3)), Freq = as.integer(res20F.t3)),
                    data.frame(word = names(res30M.t3), id = rep("30M", length(res30M.t3)), Freq = as.integer(res30M.t3)),
                    data.frame(word = names(res30F.t3), id = rep("30F", length(res30F.t3)), Freq = as.integer(res30F.t3)),
                    data.frame(word = names(res40M.t3), id = rep("40M", length(res40M.t3)), Freq = as.integer(res40M.t3)),
                    data.frame(word = names(res40F.t3), id = rep("40F", length(res40F.t3)), Freq = as.integer(res40F.t3)),
                    data.frame(word = names(res50M.t3), id = rep("50M", length(res50M.t3)), Freq = as.integer(res50M.t3)),
                    data.frame(word = names(res50F.t3), id = rep("50F", length(res50F.t3)), Freq = as.integer(res50F.t3)),
                    data.frame(word = names(res60M.t3), id = rep("60M", length(res60M.t3)), Freq = as.integer(res60M.t3)),
                    data.frame(word = names(res60F.t3), id = rep("60F", length(res60F.t3)), Freq = as.integer(res60F.t3)))







setwd("/Users/ukohank517")              # ���܂��Ȃ�
