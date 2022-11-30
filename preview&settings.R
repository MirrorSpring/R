search() #주석
help()
help(iris)
iris3
head(iris)
tail(iris, 10)
aa=sample(iris)
example(head)

ls() #현재 메모리에 뭐가 올라왔는지 확인
rm(aa) #메모리에서 변수 지우기

#산술연산자
1+2
1*2
1-2
1/2
1%%2 #나머지
1%/%2 #몫
sqrt(2)
sqrt(-2)
cos(1)

2**2
2^2 #거듭제곱
abs(-2)

runif(10) #0과 1 사이의 난수 10개(중복 허용)
trunc(pi**pi) #버림
round(pi) #반올림(소수 첫째자리)
round(pi,4) #소수 n번째 자리에서 반올림

sqrt(var((trunc(runif(10)*100))))
a=rep(sqrt(var((trunc(runif(10)*100)))), 100)
mean(a)
trunc(runif(6,min=1, max=45))
help(runif)

help(dunif)

norm=rnorm(10000,0,1)
mean(norm)
hist(norm)

hist(Nile) #히스토그램

data()
Nile
cars
summary(lm(dist~speed, data=cars))
plot(cars)
cor(cars$dist, cars$speed)        

plot(iris$Petal.Length, iris$Sepal.Length, col=iris$Species) #품종에 따라 색깔 구분

summary(lm(Petal.Length~Sepal.Length, data=iris))
