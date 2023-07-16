FROM ubuntu:20.04 
#SSH 서버 설치
RUN apt-get update
RUN apt-get install -y ssh openssh-server 
RUN mkdir /var/run/sshd
RUN apt-get clean
#root 암호 설정
RUN echo 'root:root' | chpasswd
#sshd_config 설정 변경 
RUN sed -ri 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
#작업 공간 지정 
WORKDIR /work 
#SSH 포트 노출 
EXPOSE 22
#SSH 서비스 실행
CMD ["/usr/sbin/sshd", "-D"]