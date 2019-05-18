# on each ne kubernetes instance run the following commands to insert a secret
gcloud config set project winged-fusion-240820
gcloud config set compute/zone europe-west3-b
gcloud container clusters get-credentials tomkube
kubectl create secret generic pgpassword --from-literal PGPASSWORD=TopSecret123

# install HELM
https://helm.sh/docs/using_helm/#from-script
and 
https://helm.sh/docs/using_helm/#gke

kubectl create serviceaccount --namespace kube-system tiller

kubectl create clusterrolebinding tiller-cluster-rule --clusterrole=cluster-admin --serviceaccount=kube-system:tiller

helm init --service-account tiller --upgrade 

helm install stable/nginx-ingress --name my-nginx --set rbac.create=true
