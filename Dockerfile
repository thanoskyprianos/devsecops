FROM alpine:3.23

RUN apk update && apk add git build-base

RUN git clone https://github.com/thanoskyprianos/block-world-problem-solver

WORKDIR /block-world-problem-solver

RUN make

CMD ["./main", "./test_inputs/n_6.txt"]
