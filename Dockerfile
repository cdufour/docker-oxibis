# base layer (OS)
FROM debian:11-slim

RUN apt update

RUN echo coucou > demo.txt
