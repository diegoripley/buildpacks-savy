#!/bin/bash

if [ ! -L ~/.local ]; then
    echo "Creating symlink to Python package directory"
    ln -s /layers/savy_python/python/.local /home/cnb/.local
fi

# TODO
# Run Python app

