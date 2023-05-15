#!/bin/bash
# reset
trap 'rm testfile1.txt testfile2.txt testfile3.txt' EXIT
#given
echo 'This is a test file
this is a txt file' > testfile1.txt
echo "The testfile1.txt detail:"
echo ""
cat testfile1.txt
echo ""

echo 'This is a Test file
this is a txt file
This is a test file' > testfile2.txt
echo "The testfile2.txt detail:"
echo ""
cat testfile2.txt
echo ""

echo 'This is a TEST file
this is a txt file' > testfile3.txt
echo "The testfile3.txt detail:"
echo ""
cat testfile3.txt
echo ""

# 多个文件中查找所需内容:
echo "在testfile2.txt, testfile3.txt中找到包含testfile1.txt中的任意行: "
echo "running..."
echo ""
# when todo

actual=$(grep -F -f testfile1.txt testfile2.txt testfile3.txt)


# then
echo "执行结果为："
result=$(diff -i <( echo 'testfile2.txt:this is a txt file
testfile2.txt:This is a test file
testfile3.txt:this is a txt file' ) <( echo "$actual" ))

if [ -n "$result" ]; then
    echo "$result"
else
    echo "Match Success! this result:"
    echo "$actual"
fi

