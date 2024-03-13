#!/bin/bash

which $1
echo ""
man $1 | grep "DESCRIPTION" -A 2
