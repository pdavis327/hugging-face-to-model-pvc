# Hugging Face Model to PVC

The purpose of this repository is to provide a method to download a model from HuggingFace and provide it over a PVC to be pulled into KServe. This is especially useful for LLMs.

The HuggingFace CLI is such that it optimizes for local storage across multiple models. This means that the model files are generally symlinks to blob files a la Git. vLLM knows how to process that, but you would need to know the exact snapshot id to pull it in. To simplify things for the user, use the `--local-dir` argument when downloading the model and it will download it as a self-contained directory.