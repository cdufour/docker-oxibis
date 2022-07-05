# base layer (OS)
# startup command: bash
FROM debian:11-slim

RUN apt update

RUN echo coucou > demo.txt

# overwrite la startup command de la couche inférieure
CMD ["ls", "-la"]
