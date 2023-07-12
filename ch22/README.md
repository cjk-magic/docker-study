# 개요
* Dive를 사용한 Docker 이미지 최적화

# Dive 설치 
```sh
   https://github.com/wagoodman/dive  
```

* Dive 사용하기 
```sh
 # Alex Goodman 도커 허브 이미지 사용 
 https://hub.docker.com/r/wagoodman/dive/tags  

alias dive="docker run -ti --rm  -v /var/run/docker.sock:/var/run/docker.sock wagoodman/dive"
dive <your-image-tag>

# for example
dive nginx:latest
```