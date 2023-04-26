FROM gcc:latest as build

RUN apt-get update && \
    apt-get install -y \
        cmake

COPY . /app/build

WORKDIR /app/build

RUN apt install cmake &&mkdir formatter_ex_lib/build && cd formatter_ex_lib/build && cmake .. && make && cd .. && cd .. && mkdir solver_lib/build && cd solver_lib/build && cmake .. && make && cd .. && cd .. && mkdir solver_application/build && cd solver_application/build && cmake .. && make

FROM ubuntu:latest

WORKDIR /app

COPY --from=build /app/build/solver_application/build/solver .

ENTRYPOINT ["./solver"]
