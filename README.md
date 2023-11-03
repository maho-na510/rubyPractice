# rubyPractice

## railsを起動し、コンテナに入る手順

作業ディレクトリに必要なファイルを準備
-Dockerfile
-docker-compose.yml
-Gemfile
-gemfile.lock

コンテナを立ち上げてコンテナ内に入る

docker compose up
docker exec -ti rubyPractice_web /bin/bash

新しいrailsアプリケーションを作成する

rails new [newapp_name]

## DB・テーブル確認手法

## コンテナ内に入ってmysqlにログインする場合

以下の手順でログインする

```
docker exec -ti db /bin/bash
mysql -u root -p 
=> password
```

## phpMyadminを使って表示する場合

以下の手順で表示する

```
http://localhost:9999/にアクセス
```

<img width="766" alt="スクリーンショット 2023-11-02 21 05 18" src="https://github.com/maho-na510/rubyPractice/assets/34295276/500ac6a1-952f-4881-8d36-6beb2296d14c">
