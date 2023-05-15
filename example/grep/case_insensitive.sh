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

# 忽略hello字段的大小写，查出包含hello的行:
echo "查出包含hello, Hello, HELLO的行:"
echo "running..."
echo ""
# when todo

actual=$(grep -i hello example.txt)


# then
echo "执行结果为："
result=$(diff -i <( echo 'helloworld
hello, world
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

