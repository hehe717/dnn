
gcloud ml-engine local train \
--package-path=cats_vs_dogs --module-name=cats_vs_dogs.train -- \
--train_data_pattern='gs://kmlc_test_train_bucket/cats_vs_dogs/tfrecords/train/*' \
--train_dir=/tmp/kmlc_cvd_train --model=LogisticModel --start_new_model
