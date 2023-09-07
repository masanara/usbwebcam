### build container image

```
docker build -t mediamtx .
```


### run rtsp server on container

```
docker run -d -p 8554:8554 --device=/dev/video0 -it mediamtx
```


- mediamtx : https://github.com/bluenviron/mediamtx
- ffmpeg : https://ffmpeg.org
