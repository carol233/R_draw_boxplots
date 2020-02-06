rm(list=ls())
library(data.table)
library(ggplot2)
library(ggsignif)

group1data = read.csv("only_github.csv")
group2data = read.csv("both_google_github.csv")

Group1<-data.frame(group1data,group=1)
Group2<-data.frame(group2data,group=2)

b<-rbind(Group1,Group2)
#b<-melt(b,id.vars = c("group"))
b$group<-as.factor(b$group)

p1<-ggplot(b)+
  geom_boxplot(aes(x=type,y=var,fill=group), width=0.6,position = position_dodge(0.8),outlier.size = 0.5,outlier.color = "black")+
  scale_fill_manual(values = c("white", "gray"),breaks=c("1","2"),labels=c("Only on Github","Both on Google Play and Github"))+
  # stat_summary(fun.y = mean, geom = "errorbar", aes(x=variable,y=value,ymax = ..y.., ymin = ..y..,color=group),width = .75, linetype = "dashed")
  xlab("")+
  ylab("Value")+
  scale_y_continuous(limits = c(0,10),breaks=seq(0,10,1)) +
  theme_bw()+
  theme(
    legend.position = "top",
    legend.background=element_blank(),
    legend.key = element_blank(),
    legend.margin=margin(0,0,0,0,"mm"),
    axis.text.x=element_text(size=rel(1.1),face="bold"),
    axis.line.x = element_line(size = 0.5, colour = "black"),
    axis.line.y = element_line(size = 0.5, colour = "black"),
    legend.text=element_text(size=rel(1.1)),
    legend.title=element_blank(),
    panel.border = element_blank(),
    panel.grid = element_blank()
  )+
  guides(color=FALSE)
p1

