FROM alpine:3.17.2

ENV TARGETARCH=linux-x64
ENV AZP_URL=<AZP_URL>
ENV AZP_TOKEN=<PAT_TOKEN>

RUN apk --no-cache add \
    curl \
    jq

WORKDIR /azp

COPY ./files/checkversion.sh .
RUN chmod +x checkversion.sh

ENTRYPOINT ["tail", "-f", "/dev/null"]
