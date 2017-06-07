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

# check 0 number
echo "Don't input 0" > $tmp-ans
./17745145.sh 0 10 > $tmp-err && ERROR_EXIT "we can't script"
diff $tmp-ans $tmp-err || ERROR_EXIT "17745145 0 correct?"

echo test2 OK

# hikisu kazu test
echo requiared 2 numbers > $tmp-ans
./17745145.sh 100 200 3 > $tmp-err && ERROR_EXIT "we can't script"
diff $tmp-ans $tmp-err || ERROR_EXIT "17745145 hikisu correct?"

echo "test3 OK"

# moji check
# hikisu kazu test
echo requiared 2 numbers > $tmp-ans
./17745145.sh 1 2 30 40 > $tmp-err && ERROR_EXIT "we can't script"
diff $tmp-ans $tmp-err || ERROR_EXIT "17745145 hikisu correct?"

echo "test4 OK"
