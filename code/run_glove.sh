rm logs/train_GAIN_GloVe.log
./run_GAIN_GloVe.sh 0
sudo chmod 777 logs/train_GAIN_GloVe.log
tail -f -n 2000 logs/train_GAIN_GloVe.log

