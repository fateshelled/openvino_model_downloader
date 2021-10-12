#!/bin/bash

# all model download and convert to IR format.
python3 downloader.py --all --output_dir /models -j8
python3 converter.py --all -d /models -j8

# # Example for specified model
# python3 downloader.py --name yolo-v4-tiny-tf --output_dir /models
# python3 converter.py --name yolo-v4-tiny-tf -d /models