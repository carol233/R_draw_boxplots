group1data = read.csv("only_github 2.csv")
group2data = read.csv("both_google_github 1.csv")

par(mar=c(0.2,2,0.2,0.2)+0.1)
p <- boxplot(group1data$num_commits, group2data$num_commits, name=c("Non-Google Play","Google Play"))
p