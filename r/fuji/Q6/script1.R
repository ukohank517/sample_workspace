library(RMeCab)                     # �ǂݎ��
setwd("workspace/rstudio/fuji/Q6")  # phone.txt�̏ꏊ��ݒ�
phone <- RMeCabFreq("phone.txt")    # �t�@�C���ǂݍ���
phone[1:3,]                         # ���e�m�F
phone[phone$Term == "����",]        # "����"�Ƃ����P��ɂ��ďڂ�������




phone2 <- phone[ (
                   phone$Info1 == "����" | 
                   phone$Info1 == "�`�e��" |
                   phone$Info1 == "����" |
                   phone$Info1 == "������"
                  )  
                 &
                 (
                  phone$Info2 != "�񎩗�"  & phone$Info2 != "��" 
                 ) ,]
                                    # �����A�`�e���A�����A�������̒��A�����̐��ł͂Ȃ����̂�phone2�ɓ����B
nrow(phone2)                        # 274�s����B����ł������ł��傤�H




phone3 <- phone2[phone2$Freq > 2,]  # 2��ȏ�o��������̂̂ݕۑ�
nrow(phone3)                        # 37�s
phone3[rev(order(phone3$Freq)),]    # �o���p�x�Ń\�[�g
                                    # ���{�A�����A�āA���D  -> �C�O����̗A���������B
                                    # �����A�g����Ȃǂ̓���������A�ے�̉\��������̂ŁA��������̔��f���K�v�B -> script2�����悤



setwd("/Users/ukohank517")          # ���܂��Ȃ�