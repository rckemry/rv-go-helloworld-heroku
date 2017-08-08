FROM golang:1.8
WORKDIR /go/src/app
COPY ./src/app/ .
ENV PORT=$PORT
RUN go-wrapper download
RUN go-wrapper install
CMD ["go-wrapper", "run"]
