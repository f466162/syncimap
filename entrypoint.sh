#!/bin/bash

for i in ${IMAPER_ACCOUNTS}
do
    offlineimap -a ${i} ${IMAPER_OI_ARGS} &
done

wait
