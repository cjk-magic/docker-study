# 개요
* Dive를 사용한 Docker 이미지 최적화

# history 사용하기 
```sh
docker history --human --format "{{.CreatedBy}}: {{.Size}}" test3
```

# Dive 사용하기 
```sh
   https://github.com/wagoodman/dive  
```

* Dive 도커 허브 이미지
```sh
 # Alex Goodman 도커 허브 이미지 사용 
 https://hub.docker.com/r/wagoodman/dive/tags  
```

* Dive 사용법 
```sh
alias dive="docker run -ti --rm  -v /var/run/docker.sock:/var/run/docker.sock wagoodman/dive"
dive <your-image-tag>

# for example
dive nginx:latest
```

# 도커 데스크탑 플러그인 사용
```sh
# 설치 
Extensions 메뉴 -> dive in 검색 -> Install 

# 사용
Dive In 메뉴 -> 도커 이미지 선택 및 분석 진행 
```
