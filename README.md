# uptime-reporting

A fork from giacomolozito's uptime-reporting. Added more data export for pingdom.
Refer to https://github.com/giacomolozito/uptime-reporting

## Disclaimer

Here only contains dirty hacks. No quality assured. Only tested on Mac M1.


# Build

```
docker buildx build . \
  --push \
  --platform linux/amd64,linux/arm64 \
  --tag cheneyyan/uptime-reporting:latest 

docker push cheneyyan/uptime-reporting:latest
```

# Usage

```
docker run docker.io/cheneyyan/uptime-reporting:latest --tags-include bcpreport --service pingdom --token xxxxx --date 2022-06-01_2022-06-30 --report-type range
```