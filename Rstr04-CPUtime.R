### 2020/04/09 Keonwoo park

### for ,while, repeat, break

for(i in 1:10){
  print(i)
}

a = 20:11
for(i in a){
  print(i)
}

a=c(1, 3, 2, 2, 5, 6, 1, 2, 6, 8)
for(i in a){
  print(i)
}

a = c("a", "b", "c", "d")
for(i in a){
  print(i)
}

### break 특정 반복에서 빠져 나올 때

for(i in 1:5){
  print(a[i])
  if(i>2)break
}

for(i1 in 1:5){
  for(i2 in 1: 10){
    print(c(i1, i2))
    if(i2>2){
      break
    }
  }
}

data_1 <-data.frame(y=1:10,x1=rep(1:2,each=5),x2=rep(1:5,time=2))

a=1:10
for(i in a){
  print(i)
}

i=1
while(i<11){
  print(i)
  i= i+1
}

i=0
repeat{
  i=i+1
  print(i)
  if(i>=10)break
  
}


a=sample(1:100,100,replace=T)
sum_result = 0
for(i in a){
  sum_result = sum_result+i
}
print(c(sum_result, sum_result/length(a)))

c(sum(a), mean(a))

# CPU time calculation

T1<-Sys.time()

z = 0

for(i in 1:1000){
  for(j in 1:i){
    z = z+j
  }
}
print(z)

T2<-Sys.time()
T3=difftime(T2,T1)
print(T3)

