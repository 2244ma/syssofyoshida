#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT () {
 echo "$1" >&2 #to err
 rm -f $tmp-*  #syoryakunotame
 exit 1
}

# check input 2 numbers
echo kazu,tarinai > $tmp-ans
./17745145.sh 100 > $tmp-err && ERROR_EXIT "we can't script"
diff $tmp-ans $tmp-err || ERROR_EXIT "err_msg diff"

echo test1 OK
rm -f $tmp-*

# check 0 number
echo "Don't input 0" > $tmp-ans
./17745145.sh 0 10 > $tmp-err && ERROR_EXIT "we can't script"
diff $tmp-ans $tmp-err || ERROR_EXIT "17745145 0 correct?"

echo 0 test2 OK
rm -f $tmp-*

# $#-eq2 test
echo requiared 2 numbers > $tmp-ans
./17745145.sh 100 200 3 > $tmp-err && ERROR_EXIT "we can't script"
diff $tmp-ans $tmp-err || ERROR_EXIT "17745145 hikisu correct?"

echo "numbers test3 OK"
rm -f $tmp-*

# moji check
echo > $tmp-ans
./17745145.sh aa bb > $tmp-err && ERROR_EXIT "we can't script"
diff $tmp-ans $tmp-err ||
