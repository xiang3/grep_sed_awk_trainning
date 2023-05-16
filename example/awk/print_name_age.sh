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

# 按列分割文件并进行打印:
echo "查出包name, age俩列数据:"
echo "running..."
echo ""
# when todo

actual="TODO"


# then
echo "执行结果为："
result=$(diff -i <( echo 'name, age
杜建, 89
杜世, 58
陆刚, 4
薛利, 68
冯宁, 44' ) <( echo "$actual" ))

if [ -n "$result" ]; then
    echo "$result"
else
    echo "Match Success! this result:"
    echo "$actual"
fi

