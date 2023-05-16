echo "按列分割文件并进行打印: awk '{print $1, $3}' example.csv"
awk '{print $1, $3}' example.csv
echo "\n"

echo "查出名字中包含杜字的name, age俩列数据: awk '/杜/ {print $1, $3}' example.csv"
awk '/杜/ {print $1, $3}' example.csv
echo "\n"

echo "统计出所有女生年纪的总和:  awk -F', ' '{if($2=="女") sum+=$3;} END{print sum;}' example.csv"
awk -F', ' '{if($2=="女") sum+=$3;} END{print sum;}' example.csv
echo "\n"

echo "统计出所有女生和所有男生的年纪总和: awk -F', ' '{$2=="女"?sumAgeOfFemale+=$3:sumAgeOfMale+=$3;} END{print sumAgeOfFemale FS sumAgeOfMale;}' example.csv"
awk -F', ' '{$2=="女"?sumAgeOfFemale+=$3:sumAgeOfMale+=$3;} END{print sumAgeOfFemale FS sumAgeOfMale;}' example.csv
echo "\n"
