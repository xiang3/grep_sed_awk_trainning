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

# 查出指定列数据并指定特定数据:
echo "查出名字中包含杜字的name, age俩列数据:"
echo "running..."
echo ""
# when todo

actual="TODO"


# then
echo "执行结果为："
result=$(diff -i <( echo 'name, age
杜建, 89
杜世, 58' ) <( echo "$actual" ))

if [ -n "$result" ]; then
    echo "$result"
else
    echo "Match Success! this result:"
    echo "$actual"
fi

