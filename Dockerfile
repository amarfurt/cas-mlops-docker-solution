FROM python:3.11.7-slim

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY main.py .

ARG WANDB_KEY
RUN wandb login $WANDB_KEY

CMD ["python", "main.py", "--learning_rate", "2e-5"]
