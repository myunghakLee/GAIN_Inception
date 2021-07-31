rm logs/train_GAIN_BERT_base.log
./run_GAIN_BERT.sh 0
sudo chmod 777 logs/train_GAIN_BERT_base.log
tail -f -n 2000 logs/train_GAIN_BERT_base.log
