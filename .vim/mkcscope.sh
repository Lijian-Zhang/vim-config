#!/usr/bin/env bash
find $PWD -name '*.[ch]' -type f -exec echo \"{}\" \; | sort -u > cscope.files
cscope -bvq
