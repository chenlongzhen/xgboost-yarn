#yarn hdfs 和 viewfs版本的xgboost

主要修改了一些源码：
1. dmlc: hdfs 判断的部分加入了view的判断
2. dmlc: yarn Client.java 增加client内存为4g
3. --ship 	进去的lib64 版本是gcc-4.8.1
4. 编译时系统的GLICBC必须是12版本高低都不行	（因为集群是12)
5. dmlc yarn 	目录先编译, 再在根目录编译xgboost make config=config.mk
6. yarn 和 hdfs	的测试例子在demo/distributed-training
