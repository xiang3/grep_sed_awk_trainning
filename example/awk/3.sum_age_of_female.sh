#!/bin/bash
# reset
trap 'rm example.csv' EXIT
#given
echo 'name, sex, age
杜建, 女, 89
杜世, 女, 58
陆刚, 女, 4
薛利, 男, 68
冯宁, 男, 44' > example.csv
echo "The example.csv detail:"
echo ""
cat example.csv
echo ""

# 统计出所有女生年纪的总和:
echo "统计出所有女生年纪的总和: "
echo "running..."
echo ""
# when todo

actual="TODO"


# then
echo "执行结果为："
result=$(diff -i <( echo '151' ) <( echo "$actual" ))

if [ -n "$result" ]; then
    echo "$result"
else
    echo "Match Success! this result:"
    echo "$actual"
fi

