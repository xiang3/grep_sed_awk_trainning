#!/bin/bash
# reset
trap 'rm example.csv score.csv' EXIT
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

echo 'name, course, score
杜建, 语文, 66
杜建, 数学, 99
杜建, 英语, 88
杜世, 语文, 58
杜世, 数学, 88
杜世, 英语, 76
陆刚, 语文, 96
陆刚, 数学, 66
陆刚, 英语, 90
薛利, 语文, 68
薛利, 数学, 57
薛利, 英语, 66
冯宁, 语文, 88
冯宁, 数学, 98
冯宁, 英语, 99' > score.csv
echo "The score.csv detail:"
echo ""
cat score.csv
echo ""

# 统计出所有男生在上次考试中各科的平均分和:
echo "统计出所有男生在上次考试中各科的平均分和: "
echo "running..."
echo ""
# when todo

actual="TODO"

# then
echo "执行结果为："
result=$(diff -i <( echo '语文, 78
数学, 77.5
英语, 82.5' | sort ) <( echo "$actual" | sort ))

if [ -n "$result" ]; then
    echo "$result"
else
    echo "Match Success! this result:"
    echo "$actual"
fi

