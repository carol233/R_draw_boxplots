rm(list=ls())
library(data.table)
library(ggplot2)
library(ggsignif)

group1data = read.csv("only_github.csv")
group2data = read.csv("both_google_github.csv")

Group1<-data.frame(group1data)
Group2<-data.frame(group2data)


p1<-ggplot(Group1)+
  geom_boxplot(aes(x=type,y=var), width=0.6,position = position_dodge(0.8),outlier.size=0,outlier.color = "white")+
  xlab("")+
  ylab("Value")+
  scale_y_continuous(limits = c(0,40),breaks=seq(0,40,2)) +
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