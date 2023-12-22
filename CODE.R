A=read.csv("GenMedian.csv",header=TRUE)
attach(A)

#Shapiro-wilk normality test
shapiro.test(Median_PH)
shapiro.test(Median_MH)
shapiro.test(Median_A)
shapiro.test(Median_DP)
shapiro.test(Median_FR)
shapiro.test(Median_IH)
shapiro.test(Median_P)
shapiro.test(Median_SE)
shapiro.test(Median_K)

#Mann Whitney U test
#Factor considered is Gender
z1=c(wilcox.test(Median_MH[1:137],Median_MH[138:223],paired=FALSE)$statistic,wilcox.test(Median_MH[1:137],Median_MH[138:223],paired=FALSE)$p.value)
z2=c(wilcox.test(Median_PH[1:137],Median_PH[138:223],paired=FALSE)$statistic,wilcox.test(Median_PH[1:137],Median_PH[138:223],paired=FALSE)$p.value)
z3=c(wilcox.test(Median_A[1:137],Median_A[138:223],paired=FALSE)$statistic,wilcox.test(Median_A[1:137],Median_A[138:223],paired=FALSE)$p.value)
z4=c(wilcox.test(Median_DP[1:137],Median_DP[138:223],paired=FALSE)$statistic,wilcox.test(Median_DP[1:137],Median_DP[138:223],paired=FALSE)$p.value)
z5=c(wilcox.test(Median_FR[1:137],Median_FR[138:223],paired=FALSE)$statistic,wilcox.test(Median_FR[1:137],Median_FR[138:223],paired=FALSE)$p.value)
z6=c(wilcox.test(Median_IH[1:137],Median_IH[138:223],paired=FALSE)$statistic,wilcox.test(Median_IH[1:137],Median_IH[138:223],paired=FALSE)$p.value)
z7=c(wilcox.test(Median_P[1:137],Median_P[138:223],paired=FALSE)$statistic,wilcox.test(Median_P[1:137],Median_P[138:223],paired=FALSE)$p.value)
z8=c(wilcox.test(Median_SE[1:137],Median_SE[138:223],paired=FALSE)$statistic,wilcox.test(Median_SE[1:137],Median_SE[138:223],paired=FALSE)$p.value)
z9=c(wilcox.test(Median_K[1:137],Median_K[138:223],paired=FALSE)$statistic,wilcox.test(Median_K[1:137],Median_K[138:223],paired=FALSE)$p.value)
z=data.frame("Mental"=z1,"Physical"=z2,"Atitude"=z3,"Depression"=z4,"Fear"=z5,"Impact"=z6,"Practice"=z7,"Social"=z8,"Knowledge"=z9)
print(z)




#Krukal  Wallis Z test
#Factor considered is Education level
B=read.csv("EduMedian.csv",header=TRUE)
attach(B)
BB=data.frame(Median_PH,Median_MH,Median_A,Median_DP,Median_FR,Median_IH,Median_K, Median_P,Median_SE)
M=rbind(BB)
shapiro.test(Median_A)
shapiro.test(Median_DP)
shapiro.test(Median_FR)
shapiro.test(Median_IH)
shapiro.test(Median_K)
shapiro.test(Median_MH)
shapiro.test(Median_P)
shapiro.test(Median_PH)
shapiro.test(Median_SE)

#Testing the code
Ms1=M[,1]
Ms2=M[,2]
Ms3=M[,3]
Ms4=M[,4]
Ms5=M[,5]
Ms6=M[,6]
Ms7=M[,7]
Ms8=M[,8]
Ms9=M[,9]
M1=list(Ms1[1:3],Ms1[4:83],Ms1[84:216],Ms1[217:218],Ms1[219:222])
M2=list(Ms2[1:3],Ms2[4:80],Ms2[81:216],Ms2[217:218],Ms2[219:222])
M3=list(Ms3[1:3],Ms3[4:80],Ms3[81:216],Ms3[217:218],Ms3[219:222])
M4=list(Ms4[1:3],Ms4[4:80],Ms4[81:216],Ms4[217:218],Ms4[219:222])
M5=list(Ms5[1:3],Ms5[4:80],Ms5[81:216],Ms5[217:218],Ms5[219:222])
M6=list(Ms6[1:3],Ms6[4:80],Ms6[81:216],Ms6[217:218],Ms6[219:222])
M7=list(Ms7[1:3],Ms7[4:80],Ms7[81:216],Ms7[217:218],Ms7[219:222])
M8=list(Ms8[1:3],Ms8[4:80],Ms8[81:216],Ms8[217:218],Ms8[219:222])
M9=list(Ms9[1:3],Ms9[4:80],Ms9[81:216],Ms9[217:218],Ms9[219:222])

k1=c(kruskal.test(M1)$statistic,kruskal.test(M1)$p.value)
k2=c(kruskal.test(M2)$statistic,kruskal.test(M2)$p.value)
k3=c(kruskal.test(M3)$statistic,kruskal.test(M3)$p.value)
k4=c(kruskal.test(M4)$statistic,kruskal.test(M4)$p.value)
k5=c(kruskal.test(M5)$statistic,kruskal.test(M5)$p.value)
k6=c(kruskal.test(M6)$statistic,kruskal.test(M6)$p.value)
k7=c(kruskal.test(M7)$statistic,kruskal.test(M7)$p.value)
k8=c(kruskal.test(M8)$statistic,kruskal.test(M8)$p.value)
k9=c(kruskal.test(M9)$statistic,kruskal.test(M9)$p.value)
factors=c("Impact","Physical","Mental","Depression","Fear","Social","Knowledge","Practice","Attitude")
Statistic=c(k1[1],k2[1],k3[1],k4[1],k5[1],k6[1],k7[1],k8[1],k9[1])
pvalue=c(k1[2],k2[2],k3[2],k4[2],k5[2],k6[2],k7[2],k8[2],k9[2])
data.frame(factors,Statistic,pvalue)





