docker kill demo jaeger
docker rm demo jaeger

docker run -d --name demo \
  -p 80:8080 \
  skyglass/tracing-online:latest

docker run -d --name jaeger \
  -p 14268:14268 \
  -p 16686:16686 \
  jaegertracing/all-in-one:1.39

sleep 5
curl  http://127.0.0.1/checkout
