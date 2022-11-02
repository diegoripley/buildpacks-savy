#!/bin/bash

# Only needs to be run once
pack builder create test:jammy --config ./builders/jammy/builder.toml
# Build the apps
## Julia
pack build savy_lens_julia --builder test:jammy --path ./apps/SaVy.jl/
## Python
pack build savy_lens_python --builder test:jammy --path ./apps/SAVY_LENS_FASTAPI
