# This is the example script to run distributed xgboost on AWS.
# Change the following two lines for configuration


# submit the job to YARN
../../dmlc-core/tracker/dmlc-submit --queue q_guanggao.q_adalg --cluster=yarn --num-workers=2 --worker-memory 10g --worker-cores=2 \
    --ship-libcxx /data/home/guanggao/gcc-4.8.2/lib64\
    ../../xgboost mushroom.aws.conf nthread=2\
    data=hdfs://AutoSjzCluster/team/ad_wajue/chenlongzhen_test/agaricus.txt.train\
    eval[test]=hdfs://AutoSjzCluster/team/ad_wajue/chenlongzhen_test/agaricus.txt.test\
    model_dir=hdfs://AutoSjzCluster/team/ad_wajue/chenlongzhen_test/model

    #--ship-libcxx /data/chenlongzhen/xg_tool/gcc-4.8.2/lib64\
