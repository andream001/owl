FROM gemma3:4b

#Set parameters
PARAMETER temperature 0.8
PARAMETER stop result


# Sets a custom system message to specify the behavior of the chat assistant
# Leaving it blank for now.

SYSTEM """ """

#!/bin/zsh

# variables
model_name="gemma3:4b"
custom_model_name="camel-gemma3"

#get the base model
ollama pull gemma3:4b

#create the model file
ollama create $gemma3:4b -f ./gemma3modelfile