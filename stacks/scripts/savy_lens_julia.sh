#!/bin/bash

# Symlink Julia package directory
if [ ! -L ~/.julia ]; then
    echo "Creating symlink to Julia package directory"
    ln -s /layers/savy_julia/julia/.julia ~/.julia
fi
    
