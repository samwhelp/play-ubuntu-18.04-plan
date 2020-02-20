#!/usr/bin/env bash


top | awk '/Mem :/ {print;}'

