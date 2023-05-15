cd ../resource

echo "grep \"hello\" example.txt"
grep "hello" example.txt
echo "\n"

echo "忽略大小写: grep -i \"hello\" example.txt"
grep -i "hello" example.txt
echo "\n"

echo "显示匹配的行号: grep -n \"hello\" example.txt"
grep -n "hello" example.txt
echo "\n"

echo "显示不匹配的行号: grep -v \"hello\" example.txt"
grep -v "hello" example.txt
echo "\n"

echo "匹配整个单词: grep -w \"hello\" example.txt"
grep -w "hello" example.txt
echo "\n"

echo "统计匹配行数: grep -c \"hello\" example.txt"
grep -c "hello" example.txt
echo "\n"

echo "多个文件中查找所需内容: grep -i \"test\" *.txt"
grep -i "test" *.txt
echo "\n"

echo "要在目录和其子目录下查找内容: grep -r \"test\" path/"
grep -r "test" path 
echo "\n"

echo "要在目录和其子目录下查找.txt文件中所需内容: grep \"test\" \`find path/ -name \"*.txt\"\`"
grep "test" `find path/ -name "*.txt"` 
grep -r "test" --include=\*.txt path
echo "\n"

echo "查找日志文件中11点10分到11点20之间的日志文件内容: grep -E \"11:(1[0-9]|20)\" *.log"
grep -E "11:(1[0-9]|20)" *.log
# grep -P "11:(1[0-9]|20)" *.log
echo "\n"





