CURRENT_DIR=`pwd`
export BERT_BASE_DIR=$CURRENT_DIR/prev_trained_model/bert-base
export GLUE_DIR=$CURRENT_DIR/CLUEdatasets
export OUTPUR_DIR=$CURRENT_DIR/outputs
TASK_NAME="cluener"

python run_ner_span.py \
  --model_type=bert \
  --model_name_or_path=$BERT_BASE_DIR \
  --task_name=$TASK_NAME \
  --do_predict \
  --predict_checkpoints=1568 \
  --do_lower_case \
  --loss_type=ce \
  --data_dir=$GLUE_DIR/${TASK_NAME}/ \
  --output_dir=$OUTPUR_DIR/${TASK_NAME}_output/ \