#!/bin/bash
mkdir -p ~/.theia
cp /tmp/settings.json ~/.theia/
yarn theia start /home/project --hostname 0.0.0.0
