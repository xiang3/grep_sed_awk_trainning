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

# 查出包含hello的行, 显示匹配的行号:
echo "查出包含hello的行, 并显示匹配的行号: "
echo "running..."
echo ""
# when todo

actual="TODO"

# then
echo "执行结果为："
result=$(diff <( echo '1:helloworld
2:hello, world
5:helloguys
6:hello, guys' ) <( echo "$actual" ))
if [ -n "$result" ]; then
    echo "$result"
else
    echo "Match Success! this result:"
    echo "$actual"
fi


