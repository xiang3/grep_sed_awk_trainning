#!/bin/bash
# reset
trap 'rm example.txt' EXIT
#given
echo 'helloworld
hello, world
Hello, World
HELLO, WORLD
helloguys
hello, guys
Hello, Guys
HELLO, GUYS' > example.txt
echo "The example.txt detail:"
echo ""
cat example.txt
echo ""

# 替换hello为hi:
echo "替换hello为hi: "
echo "running..."
echo ""
# when todo

actual=$(sed 's/hello/hi/g' example.txt)
# actual="TODO"
# actual=$(sed '4a\ /p' exmaple.txt)
# then
echo "$actual"
echo "执行结果为："
result=$(diff <( echo 'hiworld
hi, world
Hello, World
HELLO, WORLD
higuys
hi, guys
Hello, Guys
HELLO, GUYS' ) <( echo "$actual" ))
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