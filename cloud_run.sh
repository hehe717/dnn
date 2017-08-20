JOB_NAME=kmlc_cvd_train_$(date +%Y%m%d_%H%M%S); gcloud --verbosity=debug ml-engine jobs \
submit training $JOB_NAME \
--package-path=cats_vs_dogs --module-name=cats_vs_dogs.train \
--staging-bucket=$BUCKET_NAME --region=us-east1 \
--config=cats_vs_dogs/cloudml-gpu.yaml \
-- --train_data_pattern='gs://kmlc_test_train_bucket/cats_vs_dogs/tfrecords/train/*' \
--model=LogisticModel \
--train_dir=$BUCKET_NAME/kmlc_cvd_train_logistic_model

