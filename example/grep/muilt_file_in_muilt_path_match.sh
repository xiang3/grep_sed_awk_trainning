#!/bin/bash
# reset
trap 'rm -rf ./path/' EXIT
#given
mkdir -p path/directory/test/
echo 'This is a test file
this is a txt file' > ./path/testfile.txt
echo "The ./path/testfile.txt detail:"
echo ""
cat ./path/testfile.txt
echo ""

echo 'this is a test file' > ./path/directory/testfile
echo "The ./path/directory/testfile detail:"
echo ""
cat ./path/directory/testfile
echo ""

echo 'this is a test file' > ./path/directory/test/testfile.txt
echo "The ./path/directory/test/testfile.txt detail:"
echo ""
cat ./path/directory/test/testfile.txt
echo ""

# 要在目录和其子目录下查找.txt文件中所需内容:
echo "在path目录中中找所有包含test的.txt结尾文件中的行: "
echo "running..."
echo ""
# when todo

actual="TODO"


# then
echo "执行结果为："
result=$(diff -i <( echo 'path/directory/test/testfile.txt:this is a test file
path/testfile.txt:This is a test file' ) <( echo "$actual" ))

if [ -n "$result" ]; then
    echo "$result"
else
    echo "Match Success! this result:"
    echo "$actual"
fi

