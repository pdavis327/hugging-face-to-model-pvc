pip install -U "huggingface_hub[cli]"
huggingface-cli login --token $HF_TOKEN
huggingface-cli download $MODEL --local-dir /models/$MODEL_NAME
sleep 120