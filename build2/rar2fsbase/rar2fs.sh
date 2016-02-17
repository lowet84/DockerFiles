#!/bin/bash

rar2fs -o allow_other /mnt /rar2fs --seek-length=1
echo "Mounted rar2fs"
