# installs deepseek model from hugging face
mkdir ./models

# 1. get hold of the huggingface-cli to access the models easily
brew install huggingface-cli

# 2. download model file. Get the DeepSeek-R1 7B model from huggingface
# card name: https://huggingface.co/bartowski/DeepSeek-R1-Distill-Qwen-7B-GGUF
huggingface-cli download bartowski/DeepSeek-R1-Distill-Qwen-7B-GGUF --include "DeepSeek-R1-Distill-Qwen-7B-Q4_K_L.gguf" --local-dir ./models

# 3. quick check of inspect the model
ls -l models 
