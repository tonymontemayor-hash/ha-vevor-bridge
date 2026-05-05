#!/usr/bin/env bash

CONFIG_PATH=/data/options.json

FREQ=$(jq -r '.frequency' $CONFIG_PATH)
MQTT_HOST=$(jq -r '.mqtt_host' $CONFIG_PATH)
MQTT_USER=$(jq -r '.mqtt_user' $CONFIG_PATH)
MQTT_PASS=$(jq -r '.mqtt_password' $CONFIG_PATH)

export MQTT_HOST
export MQTT_USER
export MQTT_PASS

python main.py --frequency $FREQ
