a=c(seq(1,5,2),1:10,seq(1,9,2),rep(1:3,2))
a
help(seq)

head(iris)
irisTemp=iris[1:5,-5]
irisTemp
t(irisTemp) #전치행렬

iris[seq(10,nrow(iris),10),]
length(iris)
length(iris[,1])
iris
nrow(iris) #데이터 프레임의 데이터 개수
ncol(iris) #데이터 프레임의 컬럼 개수

iris[1:10,c(1,2)]
iris[1:10,c("Sepal.Length", "Sepal.Width")]

colnames(iris) #컬럼 이름
rownames(iris) #가로줄 이름

summary(iris)
cor(cars)