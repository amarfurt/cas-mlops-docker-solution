# cas-mlops-docker-solution

Alternative solution to MLOps Docker exercise in CAS Machine Learning. This solution uses environment variables to pass parameters. The downside is that now the default values for parameters are stored in two places (`Dockerfile` and `main.py`). The Dockerfile is (unnecessarily) longer than the original one in the `main` branch of this repository.

## Usage
Build and run the Docker image as follows:
```
docker build -t <image-name> .
docker run [-i] -t <image-name> -e LEARNING_RATE=2e-5 -e WANDB_API_KEY=<api-key>
```
