#!/bin/bash

# Update apt
sudo apt-get update

# Install tldr
sudo apt-get install tldr -y

# Install pip3
sudo apt-get install python3-pip -y

# Add pip3 packages directory to PATH
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

# Install llm
pip3 install llm

# Prompt for OpenAI key
echo "Please enter your OpenAI key for chatgpt:"
read -r OPENAI_KEY

# Set OpenAI key for llm
llm keys set openai <<< "$OPENAI_KEY"

# Clear the screen before intro
clear

# Test llm command
llm "LLM ChatGPT trial test prompt!\n
ChatGPT are you operating properly?
Give me a nicely formatted introduction with some helpful info on yourself and bash's help and tldr commands.
You are currently being accessed using a cli
from my terminal where amongst the normal bash
operations and functioning you can be
invoked with a tool named LLM.
This looks like, llm \"Hello, World!\"
You can also be called with a -c flag that tells you
to use the context of your previous messages when responding to the prompt."
sleep  45

# Pseudoload (3s) x2
echo "."
sleep 1
echo "."
sleep 1
echo "."
clear

sleep 1
echo "."
sleep 1
echo "."
sleep 1
echo "."
clear

echo "Linux(Debian) Toolkit and Environment setup Tool for new OSes!"

# Install rustup and cargo
curl https://sh.rustup.rs -sSf | sh

# NEEDS TO HAVE COMMAND FOR ADDING exa and aliases for ls, lsa, lss
# DONE: echo DONT FORGET TO INSTALL exa!!!
sudo apt-get install exa
sudo apt-get update
sudo apt-get upgrade

# DONE: echo AND dont forget to add aliases for exa AS ls, lss, lsa! plz n ty ^,^
echo "# exa aliases" >> ~/.bash_aliases
echo "alias ls='exa -rlFhs modified --icons -@ --git --group-directories-first'" >> ~/.bash_aliases
echo "alias lsa='exa -ralFhs modified --icons -@ --git --group-directories-first'" >> ~/.bash_aliases
source ~/.bashrc
