# +
gpu_id=$1
MODEL_NAME=$2
GCN_layer=$3
SUBNETWORK_LOSS_SCALE=$4



printf "=============\n"
printf "gpu_id: "${gpu_id}
printf "\nModel_Name: "${MODEL_NAME}
printf "\nGCN_layer: "${GCN_layer}
printf "\n"$
printf "=============\n"

rm logs/train_$MODEL_NAME.log
sh run_GAIN_BERT.sh $gpu_id $MODEL_NAME $GCN_layer $SUBNETWORK_LOSS_SCALE
sudo chmod 777 logs/train_$MODEL_NAME.log
tail -f -n 2000 logs/train_$MODEL_NAME.log

