library(datasets)
#load data
data("mtcars")
#view first 5 rows
head(mtcars,5)

?mtcars

#load ggplot package
library(ggplot2)

#create a scatterpolot of displacement(disp) and miles per galon (mpg)



#add a title 
ggplot(aes(x=disp,y=mpg,), data=mtcars)+geom_point()+ggtitle("displacemente vc miles per gallon")+labs(x="Displacement", y="males per gallon")

#convert the data 'v' to a factor(?)
mtcars$vs <- as.factor(mtcars$vs)

#box plot of the distribution v-shaped and straght engine (vs={0,1})
ggplot(aes(x=vs, y=mpg), data = mtcars) + geom_boxplot()

#fancy config
ggplot(aes(x=vs, y=mpg, fill = vs), data = mtcars) + 
  geom_boxplot(alpha=0.3) +
  theme(legend.position="none")

#make a histogram plot  of the variable weight
ggplot(aes(x=wt), data=mtcars)+geom_histogram(binwidth = 0.5                                              )
