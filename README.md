# cas-mlops-docker-solution

Solution to MLOps Docker exercise in CAS Machine Learning. Check out the different branches for different solutions.

## Usage
Build and run the Docker image as follows:
```
docker build -t <image-name> .
docker run [-i] -t <image-name> --learning_rate 2e-5 --wandb_project <project-name> --wandb_api_key <api-key>
```
