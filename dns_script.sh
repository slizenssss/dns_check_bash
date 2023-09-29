#!/bin/bash
NET=xxx.xxx 
for i in$(seq x1 x2); do
	for j in $(seq x1 x2); do
		ADDR=${NET}.${i}.${j}
		echo -e "${ADDR}\t$(dig -x ${ADDR} +short)"
	done
done
