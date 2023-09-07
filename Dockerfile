FROM ubuntu
RUN mkdir /work && apt update && apt install -y wget ffmpeg v4l-utils
WORKDIR /work
RUN wget https://github.com/bluenviron/mediamtx/releases/download/v1.0.3/mediamtx_v1.0.3_linux_amd64.tar.gz && tar zxf mediamtx_v1.0.3_linux_amd64.tar.gz
COPY entrypoint.sh /work
CMD ["/work/entrypoint.sh"]
