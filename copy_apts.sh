#!/bin/sh
rm -r output/NavData/apt
mkdir output/NavData/apt
for k in data/airports/*.dat; do
	cp $k output/NavData/apt/
done
