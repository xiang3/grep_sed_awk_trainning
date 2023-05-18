#!/bin/bash
# reset
trap 'rm example.txt' EXIT
#given
echo '507643299154975856
50764329915497585623432
50764329915497585623432930
50764329915497
5076432991549758562
507643299
5076432991549758562343242314
5076432991549758562' > example.txt
echo "The example.txt detail:"
echo ""
cat example.txt
echo ""

# 将每行的数据补充道16的倍数:
echo "将每行的数据补充道16的倍数: "
echo "running..."
echo ""
# when todo

# actual=$(awk '{str = ""; len=length($0); for(i=0; i<=(16-(len % 16)); i++){str = str "0"}; print $0 str}' example.txt)
actual="TODO"
# then
echo "执行结果为："
result=$(diff <( echo '507643299154975856000000000000000
507643299154975856234320000000000
507643299154975856234329300000000
50764329915497000
507643299154975856200000000000000
50764329900000000
507643299154975856234324231400000
507643299154975856200000000000000' ) <( echo "$actual" ))
if [ -n "$result" ]; then
    echo "$result"
else
    echo "Match Success! this result:"
    echo "$actual"
fi


# # 忽略大小写的替换hello为hi:
# echo "忽略大小写的替换hello为hi: "
# echo "running..."
# echo ""
# # when todo

# # actual=$(sed 's/hello/hi/gI' example.txt)
# actual="TODO"

# # then
# echo "执行结果为："
# result=$(diff <( echo 'hiworld
# hi, world
# hi, World
# hi, WORLD
# higuys
# hi, guys
# hi, Guys
# hi, GUYS' ) <( echo "$actual" ))
# if [ -n "$result" ]; then
#     echo "$result"
# else
#     echo "Match Success! this result:"
#     echo "$actual"
# fi