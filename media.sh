#!/bin/bash

total=0
media=0;

for arg in "$@"; do

	let total="total += arg"
done

let media="total / $#"

echo "$media"
