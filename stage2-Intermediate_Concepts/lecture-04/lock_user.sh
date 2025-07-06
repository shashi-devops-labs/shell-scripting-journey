#!/bin/bash

sudo passwd -l "$1" && echo "User $1 is locked."
