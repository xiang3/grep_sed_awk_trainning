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

# 替换第二行的第一个hello为hi，并且备份原始数据:
echo "替换第二行的第一个hello为hi，并且备份原始数据: "
echo "running..."
echo ""
# when todo
sed -i.back '2s/hello/hi/' example.txt
actual=$(cat example.txt)
# actual="TODO"

# then
echo "执行结果为："
diff <(echo 'helloworld
hello, world
Hello, World
HELLO, WORLD
helloguys
hello, guys
Hello, Guys
HELLO, GUYS') <(cat example.txt.back)
result=$(diff <( echo 'helloworld
hi, world
Hello, World
HELLO, WORLD
helloguys
hello, guys
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