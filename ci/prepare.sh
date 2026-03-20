sudo mkdir -p ~/bot/main/user_data/strategies/
sudo mkdir -p ~/bot/main/user_data/logs/
sudo chown -R 1000:1000 ~/bot/main/user_data/
cp -r ~/bot/strategies/ ~/bot/main/user_data/strategies/
cp ~/bot/config.json ~/bot/main/user_data/