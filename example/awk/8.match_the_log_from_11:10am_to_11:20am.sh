#!/bin/bash
# reset
trap 'rm test.log' EXIT
#given
echo '2023-05-14 11:21:54.189 DEBUG 4828 --- [           main] com.concretepage.MyApplication           : Running with Spring Boot v1.5.2.RELEASE, Spring v4.3.7.RELEASE
2023-05-14 11:20:54.189 DEBUG 4828 --- [           main] com.concretepage.MyApplication           : Running with Spring Boot v1.5.2.RELEASE, Spring v4.3.7.RELEASE
2023-05-14 11:13:54.189 DEBUG 4828 --- [           main] com.concretepage.MyApplication           : Running with Spring Boot v1.5.2.RELEASE, Spring v4.3.7.RELEASE
2023-05-14 11:13:54.189  INFO 4828 --- [           main] com.concretepage.MyApplication           : No active profile set, falling back to default profiles: default
2023-05-14 11:13:58.846  INFO 4828 --- [           main] com.concretepage.MyApplication           : Started MyApplication in 5.209 seconds (JVM running for 5.66)
2023-05-14 11:13:58.844 DEBUG 4828 --- [           main] com.concretepage.MyApplication
2023-05-14 11:09:55.189 DEBUG 4828 --- [           main] com.concretepage.MyApplication           : Running with Spring Boot v1.5.2.RELEASE, Spring v4.3.7.RELEASE
2023-05-14 11:09:55.189 DEBUG 4828 --- [           main] com.concretepage.MyApplication           : Running with Spring Boot v1.5.2.RELEASE, Spring v4.3.7.RELEASE
2023-05-14 11:09:55.189 DEBUG 4828 --- [           main] com.concretepage.MyApplication           : Running with Spring Boot v1.5.2.RELEASE, Spring v4.3.7.RELEASE
2023-05-14 11:09:55.189 DEBUG 4828 --- [           main] com.concretepage.MyApplication           : Running with Spring Boot v1.5.2.RELEASE, Spring v4.3.7.RELEASE
2023-05-14 11:09:55.189 DEBUG 4828 --- [           main] com.concretepage.MyApplication           : Running with Spring Boot v1.5.2.RELEASE, Spring v4.3.7.RELEASE
2023-05-14 11:09:55.189 DEBUG 4828 --- [           main] com.concretepage.MyApplication           : Running with Spring Boot v1.5.2.RELEASE, Spring v4.3.7.RELEASE
' > test.log
echo "The test.log detail:"
echo ""
cat test.log
echo ""

# 查找日志文件中11点10分到11点20之间的日志文件内容::
echo "查找日志文件中11点10分到11点20之间的日志文件内容:"
echo "running..."
echo ""
# when todo

actual="TODO"

# then
echo "执行结果为："
result=$(diff <( echo '2023-05-14 11:20:54.189 DEBUG 4828 --- [           main] com.concretepage.MyApplication           : Running with Spring Boot v1.5.2.RELEASE, Spring v4.3.7.RELEASE
2023-05-14 11:13:54.189 DEBUG 4828 --- [           main] com.concretepage.MyApplication           : Running with Spring Boot v1.5.2.RELEASE, Spring v4.3.7.RELEASE
2023-05-14 11:13:54.189  INFO 4828 --- [           main] com.concretepage.MyApplication           : No active profile set, falling back to default profiles: default
2023-05-14 11:13:58.846  INFO 4828 --- [           main] com.concretepage.MyApplication           : Started MyApplication in 5.209 seconds (JVM running for 5.66)
2023-05-14 11:13:58.844 DEBUG 4828 --- [           main] com.concretepage.MyApplication' ) <( echo "$actual" ))
if [ -n "$result" ]; then
    echo "$result"
else
    echo "Match Success! this result:"
    echo "$actual"
fi


