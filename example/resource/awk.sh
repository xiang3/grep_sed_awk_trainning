echo "按列分割文件并进行打印: awk '{print $1, $3}' example.csv"
awk '{print $1, $3}' example.csv
echo "\n"

echo "查出名字中包含杜字的name, age俩列数据: awk '/杜/ {print $1, $3}' example.csv"
awk '/杜/ {print $1, $3}' example.csv
echo "\n"
