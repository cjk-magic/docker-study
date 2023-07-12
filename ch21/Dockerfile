FROM busybox AS build-stage
RUN echo 'Building...' > /build.txt

FROM busybox AS test-stage
COPY --from=build-stage /build.txt /build.txt
RUN echo 'Testing...' >> /build.txt

FROM busybox  
COPY --from=test-stage /build.txt /build.txt
CMD cat /build.txt 