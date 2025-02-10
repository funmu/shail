# Self Hosted AI with LLMs (SHAIL)

Our intent is to facilitate easy to use locally hosted LLMs. Doing this has few advantages:

1. **Privacy Protection** - none of the prompts and responses are exposed to outside (irrespective of US or China or other countries)
2. **Data Security** - all data shared with LLMs are processed and used locally without any data ex-filtration
3. **Disconnected Access** - quick access without having the request travel across the network
4. **Flexibility** - Quickly swap out models or experiment with multiple models easily
5. **Speed** - Faster response time because there is no contention with requests from other sources

## Offerings

Our efforts are focused on enabling the following:

1. *Configure* to create your own docker containers optimized for Macs with Apple Silicon
2. *Install* the docker containers and run them locally on Apple Macs / MacBooks and / or local appliance
3. *Create* Apps and Games - enable programmable endpoints for creating your own apps and games

And do this with sufficient documentation to help with

1. Configuration and installation steps
2. Sharing information with others

## What do we rely on

We use Open Source software for hosting the models.
We prefer Llama.cpp for now (from <https://github.com/ggerganov/llama.cpp>)

We also prefer open source models Mistral, Llama (from Meta), and DeepSeek.
We prefer DeepSeek-R1 to start with. And soon will have information for other models as well.

## SHAIL on Apple Silicon

Apple Silicon chips (M1, M2, M3, M4) are powerful and come with built-in GPUs.
Hence, it is attractive for us to run the AI models on these machines locally.

See [SHAIL on Apple Silicon v1](./docs/1.shail.apple.silicon.md) for details.
This version uses the **llama.cpp** to host open sourced LLM models.

See [SHAIL on Apple Silicon v2](./docs/2.shail.apple.silicon.md) for details.
In the v2, we use **ollama** and **open-webui** to host the LLM models.
We also use Docker containers, to keep things simpler.

## References

- Models - from <https://huggingface.com>
- Model Host Software - <https://github.com/ggerganov/llama.cpp>
- Runtime host - use Docker - <https://docker.com>
- Host Machines - use Apple Silicon - Apple Macs, MacBook Pro, Mac Mini, etc. with at least 32GB of memory
