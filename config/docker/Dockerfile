FROM java:8
ADD spring/lib/* spring/lib/
ADD spring/resources/* spring/resources/
ADD spring/currency-sys-server.jar spring/app.jar
EXPOSE 2022
WORKDIR spring
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
&& echo 'Asia/Shanghai' >/etc/timezone
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom"\
,"-Xms1024m","-Xmx1024m", "-Xss512k"\
,"-XX:+PrintGCDetails","-XX:SurvivorRatio=8"\
,"-XX:-UseAdaptiveSizePolicy"\
,"-XX:+UnlockExperimentalVMOptions"\
,"-XX:+HeapDumpOnOutOfMemoryError"\
,"-XX:HeapDumpPath=/var/log/jvm/dump.hprof"\
,"-jar","app.jar"]
CMD ["--server.port"]
