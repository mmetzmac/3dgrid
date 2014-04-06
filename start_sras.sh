#!/bin/bash
PATH=$PATH:/<user_path>/.rvm/bin # Add RVM to PATH for scripting
[[ -s "/<user_path>/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
cd /<user_path>/
sras start
