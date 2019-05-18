docker build -t tomtom80/multi-client:latest -t tomtom80/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t tomtom80/multi-server:latest -t tomtom80/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t tomtom80/multi-worker:latest -t tomtom80/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push tomtom80/multi-client:latest
docker push tomtom80/multi-server:latest
docker push tomtom80/multi-worker:latest

docker push tomtom80/multi-client:$SHA
docker push tomtom80/multi-server:$SHA
docker push tomtom80/multi-worker:$SHA
kubectl apply -f k8s
kubectl set image deployments/server-deployment server=tomtom80/multi-server:$SHA
kubectl set image deployments/client-deployment client=tomtom80/multi-client:$SHA
kubectl set image deployments/worker-deployment worker=tomtom80/multi-worker:$SHA