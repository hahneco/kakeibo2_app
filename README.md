# 家計簿アプリ (Kakeibo2App)

家計簿アプリは、Ruby on Rails フレームワークを使用して作成されたシンプルな家計簿管理アプリです。

## 機能

- 収入と支出の記録
- カテゴリーごとの集計
- グラフを使った収支の可視化

## 必要な環境

- Ruby 3.0.2
- Ruby on Rails 7.0.6
- PostgreSQL 15.x

## インストールと実行

1. このリポジトリをクローンします。

```
git clone https://github.com/your-username/kakeibo2_app.git
```

2. クローンしたプロジェクトフォルダーに移動します。

```
cd kakeibo2_app
```

3. Docker イメージをビルドし、Docker コンテナを起動します。

```
docker-compose build
docker-compose up
```

4. データベースの作成とマイグレーションを実行します。

```
docker-compose exec web rails db:create
docker-compose exec web rails db:migrate
```

5. ブラウザで http://localhost:3000 にアクセスして家計簿アプリが起動することを確認します。

## ライセンス

MIT ライセンス
