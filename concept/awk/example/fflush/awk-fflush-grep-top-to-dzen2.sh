#!/usr/bin/env bash


top | awk '/Mem :/ {print;fflush()}' | dzen2 -p

