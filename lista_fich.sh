#!/bin/bash


for argumentoX in "$@"

do

	echo ""
	echo "----------------------"
	echo "|     $argumentoX    |"
	echo "----------------------"
	cat $argumentoX
	echo ""
done
