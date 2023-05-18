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

# 删除第二行到第四行的内容:
echo "删除第二行到第四行的内容: "
echo "running..."
echo ""
# when todo

# actual=$(sed '2,5d' example.txt)
actual="TODO"

# then
echo "执行结果为："
result=$(diff <( echo 'helloworld
hello, guys
Hello, Guys
HELLO, GUYS' ) <( echo "$actual" ))
if [ -n "$result" ]; then
    echo "$result"
else
    echo "Match Success! this result:"
    echo "$actual"
fi


