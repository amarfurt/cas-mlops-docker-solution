FROM python:3.11.7-slim

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY main.py .

ENV CHECKPOINT_DIR="checkpoints"
ENV LEARNING_RATE=2e-5
ENV WARMUP_STEPS=0
ENV WEIGHT_DECAY=1e-2
ENV TRAIN_BATCH_SIZE=32
ENV EVAL_BATCH_SIZE=32
ENV EPOCHS=3
ENV WANDB_PROJECT="cas-mlops"
ENV WANDB_API_KEY=""

CMD python main.py --checkpoint_dir $CHECKPOINT_DIR --learning_rate $LEARNING_RATE --warmup_steps $WARMUP_STEPS --weight_decay $WEIGHT_DECAY --train_batch_size $TRAIN_BATCH_SIZE --eval_batch_size $EVAL_BATCH_SIZE --epochs $EPOCHS --wandb_project $WANDB_PROJECT --wandb_api_key $WANDB_API_KEY
