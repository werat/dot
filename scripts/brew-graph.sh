#!/usr/bin/env bash

brew list | while read cask; do echo -n "$cask <- "; echo $(brew uses $cask --installed); done
