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

# 匹配整个hello的单词:
echo "匹配整个hello的单词: "
echo "running..."
echo ""
# when todo

actual="TODO"

# then
echo "执行结果为："
result=$(diff <( echo 'hello, world
hello, guys' ) <( echo "$actual" ))
if [ -n "$result" ]; then
    echo "$result"
else
    echo "Match Success! this result:"
    echo "$actual"
fi


