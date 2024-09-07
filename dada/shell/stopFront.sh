
#接口项目站点路径（目录按照各自配置）
APP_PATH=/www/wwwroot/api.java.dada.net/

#jar包文件名称
APP_NAME=$APP_PATH/dada-front.jar

echo "开始停止 dada-admin 项目进程"
#查询进程，并杀掉当前jar/java程序

pid=`ps -ef|grep $APP_NAME | grep -v grep | awk '{print $2}'`

echo "pid: $pid "

if [ $pid ];then
  echo "pid: $pid"
  kill -9 $pid
  echo "dada-admin 项目进程进程终止成功"
else
  echo "未找到对应服务"
fi