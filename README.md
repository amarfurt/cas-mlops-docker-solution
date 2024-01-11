# cas-mlops-docker-solution

Alternative solution to MLOps Docker exercise in CAS Machine Learning. This solution uses the wandb API key as a build argument. The downside is that you cannot share the Docker image with others, as it now contains your personal API key. This solution also uses CMD to run the main script directly, so training arguments can no longer be changed. For a deployment of a finalized product, this is the preferred solution.

## Usage
Build and run the Docker image as follows:
```
docker build --build-arg WANDB_KEY=<api-key> -t <image-name> .
docker run [-i] -t <image-name>
```
