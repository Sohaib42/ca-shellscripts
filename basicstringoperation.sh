#!/bin/bash
BUFFETT="Life is like a snowball. The important thing is finding wet snow and a really long hill."
# write your code here
ISAY=${BUFFETT[@]/snow/foot}
ISAY=${ISAY[@]/finding/getting}
WET=`expr index "$ISAY[2]" 'w'`
CHOPWET=${ISAY:$WET + 3}
ISAY=${ISAY[@]// $CHOPWET/}

echo "Warren Buffett said:"
echo $BUFFETT
echo "and I say:"
echo $ISAY
