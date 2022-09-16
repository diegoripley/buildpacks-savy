#!/bin/bash

# Only needs to be run once
pack builder create test:jammy --config ./builders/jammy/builder.toml
# When building the app
pack build savy_lens --builder test:jammy --path ./apps/SaVy.jl/
