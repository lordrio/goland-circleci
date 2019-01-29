#!/bin/bash

prevHash=$(cat hash)
nextHash=`python -c "import hashlib; print(hashlib.sha512(\"${prevHash}\").hexdigest())"`
echo $nextHash > hash

git acm "new build" && git push