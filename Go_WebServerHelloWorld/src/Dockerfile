FROM golang

EXPOSE 8080 
ADD . ./src/WebServerHello
#RUN ls ./go/src/WebServerHello
RUN go install ./src/WebServerHello
ENTRYPOINT WebServerHello

