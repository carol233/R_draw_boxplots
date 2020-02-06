rm(list=ls())
library(data.table)
library(ggplot2)
library(ggsignif)


group1data = read.csv("only_github 2.csv")
group2data = read.csv("both_google_github 1.csv")


Group1<-data.frame(group1data, group="Non-Google Play")
Group2<-data.frame(group2data, group="Google Play")
b<-rbind(Group1,Group2)
b$group<-as.factor(b$group)

l1 = b$num_commits
gro = b$group
df = data.frame(l1, gro)

p1<-ggplot(df, aes(x=gro,y=l1))+
  stat_boxplot(geom="errorbar",width=0.15)+
  geom_boxplot(aes(fill=gro), width=0.6,position = position_dodge(0.8),outlier.size=1,outlier.color="white")+
  scale_fill_manual(values = c("white", "gray"),breaks=c("Non-Google Play","Google Play"),labels=c("Non-Google Play","Google Play"))+
  # stat_summary(fun.y = mean, geom = "errorbar", aes(x=variable,y=value,ymax = ..y.., ymin = ..y..,color=group),width = .75, linetype = "dashed")
  xlab("")+
  ylab("")+
  scale_y_continuous(limits = c(0,200),breaks=seq(0,200,10)) +
  #scale_x_continuous(labels = c("Only on Github","Both on Google Play and Github")) + 
  theme_bw()+
  theme(
    legend.position = "top",
    legend.background=element_blank(),
    legend.key = element_blank(),
    legend.margin=margin(0,0,0,0,"mm"),
    axis.text.x=element_text(size=rel(4)),
    axis.text.y=element_text(size=rel(3.5)),
    axis.line.x = element_line(size = 0.5, colour = "black"),
    axis.line.y = element_line(size = 0.5, colour = "black"),
    legend.text=element_text(size=rel(1.1)),
    legend.title=element_blank(),
    panel.border = element_blank(),
    panel.grid = element_blank()
  )+
  guides(color=FALSE)+
  guides(fill=FALSE)
p1

