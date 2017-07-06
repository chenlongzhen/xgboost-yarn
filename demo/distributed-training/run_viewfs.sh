# This is the example script to run distributed xgboost on AWS.
# Change the following two lines for configuration


# submit the job to YARN
../../dmlc-core/tracker/dmlc-submit --cluster=yarn --worker-memory 10g --num-workers=2 --worker-cores=2 \
    --ship-libcxx /data/chenlongzhen/xg_tool/gcc-4.8.2/lib64\
    ../../xgboost mushroom.aws.conf nthread=2\
    data=hdfs://ns2/team/ad_wajue/chenlongzhen/xgboost_demo_data/agaricus.txt.train\
    eval[test]=hdfs://ns2/team/ad_wajue/chenlongzhen/xgboost_demo_data/agaricus.txt.test\
    model_dir=hdfs://ns2/team/ad_wajue/chenlongzhen/xgboost_demo_data/model
