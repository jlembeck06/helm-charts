# Update and build dependency
helm dependency update

helm dependency build

## Create a Secret to store postgresql credentials
kubectl create secret generic postgres-creds --from-env-file=.env