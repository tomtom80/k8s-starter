# on each ne kubernetes instance run the following commands to insert a secret
gcloud config set project winged-fusion-240820
gcloud config set compute/zone europe-west3-b
gcloud container clusters get-credentials tomkube
kubectl create secret generic pgpassword --from-literal PGPASSWORD=TopSecret123