var1<-2 #스칼라 데이터
head(iris)
iris$Sepal.Length
sum(iris$Sepal.Length)
iris$Sepal.Length[1]
iris$Sepal.Length[1:10]
sum(1:100)

num<-c(10,20,30)
num
sum(num)

sum(10,20,30,NA) #결측치가 있으면 계산 불가
sum(10,20,30,NA,na.rm=T) #결측치를 제거하고 계산

2==3
2>3
2==3|2<3
2!=3&2==3

#자료형 확인
is.numeric(iris$Sepal.Length) #변수가 숫자인지 확인
is.numeric(iris$Species)
is.integer(iris$Sepal.Length) #변수가 정수인지 확인
is.double(iris$Sepal.Length) #변수가 실수인지 확인
class(iris$Sepal.Length) #변수 타입 확인
is.data.frame(iris) #변수가 데이터 프레임인지 확인
class(iris$Species)
class(iris)
is.na(iris) #변수가 결측치인지 확인
sum(is.na(iris)) #결측치 개수 확인(true는 1, false는 0으로 처리)

str(iris) #자료구조 확인
gold=read.csv("gold.csv",header=T)
str(gold) 
plot(gold)
plot(gold$Time, gold$Gold)


num1<-c(1,2,3,"4")
num2<-as.numeric(num1) #정수로 변환
class(num2)

#factor: 숫자와 문자를 동시에 가지는 자료형
gender<-c("man", "woman", "man", "man")
class(gender)

#빈도수 확인
table(gender)

Ngender<-as.factor(gender)
Ngender
plot(Ngender)
str(Ngender)
table(as.factor(gold$WL))
plot(as.factor(gold$WL))


#날짜형
date1<-"2017/02/28"
date1
as.Date(date1,"%y/%m/%d")
as.Date("18/12/31", "%y/%m/%d")
as.Date("2018/12/31", "%Y/%m/%d") #연도가 4자리이면 대문자로 써야 함(Y2K)


#진짜 요일 데이터인지 확인하기
datas<-c("02/28/17", "02/29/17", "03/01/17")
datas
as.Date(datas, "%m/%d/%y") #2017년에는 2월 29일이 없기 때문에 NA 발생


#날짜 계산
mydates<-as.Date(c("2007-06-22", "2004-02-13"))
mydates
mydates[1]-mydates[2]


Sys.Date() #현재 날짜
class(Sys.Date())

Sys.Date()-as.Date("1998-06-19")


#Vector: 1차원 선형 자료 구조
#구성: 변수[첨자], 첨자는 1부터 시작
#동일한 자료형의 데이터만 저장 가능
#벡터 처리 함수: sum(), mean(), sd(), union(), var()
head(iris, 20)
iris$Sepal.Length
isl<-iris$Sepal.Length
isl
is.vector(isl)
max(isl)
min(isl)
max(isl)-min(isl)
max(iris$Petal.Length)-max(iris$Sepal.Length)
-mean(iris$Sepal.Length)+mean(iris$Petal.Length)
hist(isl)
hist(iris$Petal.Length)
ipl<-iris$Petal.Length
med(ipl)
median(ipl)
mean(ipl)
median(isl)
mean(ipl)
mean(isl)
range(isl) #최솟값과 최댓값

summary(lm(cars$dist~cars$speed))
sd(isl)

a<-c(1,1,3,4,5)
mean(a)
sd(a)
var(a)
sd(a)**2
sum(isl[c(1,10,11)])
a<-0
for (i in c(1:20,30,40)){
  a=a+ipl[i]
}
a
sum(ipl[c(1:20,30,40)])

x<-c(10,20,30,40,50)
x
y<-replace(x,c(2,4),c(200,400)) #replace(변경할 벡터, 변경할 index, 변경할 값)
y
z=seq(10,100,10,3)
z
sum(c(seq(1,10,2),1:10,50,60))
rep(1:3,3)
c(rep('red',4),'green')
rep(1:3,each=3)
sum(rep(seq(2,20,2),each=2))


x=c(1,3,5,7)
y=c(3,5)
union(x,y) #합집합
intersect(x,y) #교집합
setdiff(x,y) #차집합

sample(1:10,2) #중복을 허용하지 않는 난수
sample(1:10,10) #셔플
sample(1:45,6)
sort(sample(1:45,6)) #작은 것부터 크기 순으로 정렬

sort(intersect(isl,ipl))
help(sort)
length(sort(intersect(isl,ipl),decreasing=T))
sort(intersect(isl,ipl),decreasing=T) #내림차순 정렬
length(union(isl,ipl)) #isl, ipl에 중복 데이터가 많아서 발생하는 현상

age=c(30,35,40);age
names(age)=c("carlson","caruana","nakamura")
age

unique(isl) #중복되지 않은 값만 출력
length(unique(isl))
unique(iris$Species)

x=rep(c("a", "b", "c"),4)
x
match(x,"a") #벡터에 a가 있으면 1 출력
sum(match(x,"a"),na.rm=T)
table(match(x,"a"))
match(x,c("a","b"))
table(match(x,c("a","b")))

name=c("Apple", "Computer", "Samsung", "Communication")
grep("Co",name) #like 검색으로 index 출력
name[grep("Co",name)]
name[grep("om", name)]

a=1:500
a
a[10:(length(a)-5)]

a=10:50
a=a[-1] #1번째 값 지우기
a=a[-5]
a=a[-c(10,11,12)]
a

a=10:50
sum(a[seq(1,length(a),2)])

abs(max(a)-min(a))>3
