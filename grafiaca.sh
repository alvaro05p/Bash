#!/bin/bash
    for param in "$@"; do

        for ((i=0;i<$param;i++)) do

            echo -n "* "
            
        done
        
        echo ""

    done
