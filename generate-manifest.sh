#!/bin/bash

sed "s/HASH/$(sha256sum background.js | cut -d' ' -f1)/" manifest.json.template > manifest.json
