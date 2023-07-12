# 개요
* Dockerfile Multi-Stage 빌드 실습

# 컨테이너 빌드

* 이미지 생성
```sh
docker build -t test1 -f multi_stage.Dockerfile .
docker build -t test2 -f one_stage.Dockerfile .
```

* 이미지 확인
```sh
docker images 
```

* 이미지 실행 
```sh
docker run --rm test1

