#!/bin/bash
docker build . -t boc/savy-base:jammy --target base
docker build . -t boc/savy-run:jammy --target run
docker build . -t boc/savy-build:jammy --target build
