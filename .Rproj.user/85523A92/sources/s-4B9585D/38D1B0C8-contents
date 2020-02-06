## Check to see if packages have been installed. If
## they have not been installed, install them.
## rcompanion - the package with wilcoxonPairedR, R Effect Size
## for Wilcoxon Two-Sample Paired Signed-Rank Test
list.of.packages <- c("rcompanion")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)
## Load all the packages at once needed for the program
lapply(list.of.packages, require, character.only = TRUE)
## Create function to calculate r the effect size from z score
library(pwr)
library(effsize)


rFromWilcox<-function(wilcoxModel,N)
{
  z<-qnorm(wilcoxModel$p.value/2)
  r<-z/sqrt(N)
  cat(wilcoxModel$data.name,"Effect Size, r=",r)
}


group1data = read.csv("only_github 2.csv")
group2data = read.csv("both_google_github 1.csv")


Group1<-data.frame(group1data, group=1)
Group2<-data.frame(group2data, group=2)
b<-rbind(Group1,Group2)

print("num_commits")
print(wilcox.test(Group1$num_commits, Group2$num_commits))
print(cohen.d(Group1$num_commits, Group2$num_commits))
print(cliff.delta(Group1$num_commits, Group2$num_commits))

print("num_branches")
print(wilcox.test(Group1$num_branches, Group2$num_branches))
print(cohen.d(Group1$num_branches, Group2$num_branches))
print(cliff.delta(Group1$num_branches, Group2$num_branches))

print("num_packages")
print(wilcox.test(Group1$num_packages, Group2$num_packages))
print(cohen.d(Group1$num_packages, Group2$num_packages))
print(cliff.delta(Group1$num_packages, Group2$num_packages))

print("num_releases")
print(wilcox.test(Group1$num_releases, Group2$num_releases))
print(cohen.d(Group1$num_releases, Group2$num_releases))
print(cliff.delta(Group1$num_releases, Group2$num_releases))

print("num_stars")
print(wilcox.test(Group1$num_stars, Group2$num_stars))
print(cohen.d(Group1$num_stars, Group2$num_stars))
print(cliff.delta(Group1$num_stars, Group2$num_stars))

print("active_period")
print(wilcox.test(Group1$active_period, Group2$active_period))
print(cohen.d(Group1$active_period, Group2$active_period))
print(cliff.delta(Group1$active_period, Group2$active_period))

print("active_period / number_commits")
print(wilcox.test(Group1$active_period/Group1$num_commits, Group2$active_period/Group2$num_commits))
print(cohen.d(Group1$active_period/Group1$num_commits, Group2$active_period/Group2$num_commits))
print(cliff.delta(Group1$active_period/Group1$num_commits, Group2$active_period/Group2$num_commits))

