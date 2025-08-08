# This helm chart will implement a JS API with a PostgreSQL database:

- Methods: post, get, put, delete

- Path: /api/kv

- Variables: key, value

# Update and build dependency
helm dependency update

helm dependency build

## Create a Secret to store postgresql credentials
kubectl create secret generic postgres-creds --from-env-file=.env