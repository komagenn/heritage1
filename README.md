# README
・アプリケーション名
  heritage1
・アプリケーション概要
  南米の世界遺産を一覧できるアプリケーションです。
・URL
・テスト用アカウント
・利用方法
  南米の世界遺産について画像と共に一覧したい時に国ごとで閲覧が可能です。
・目指した課題解決
  世界遺産は現在1150個以上あります。
  しかし、知っている数は100個もいかないと思います。
  また南米の世界遺産に関しては、写真付きで説明も載っているサイトというのは、私が探した中ではありませんでした。
  そこで、南米の世界遺産について一覧を作ることで、より気軽に世界遺産について知ることができるきっかけが作れると考えました。
・洗い出した要件
・実装した機能についての画像やGIFおよびその説明
・実装予定の機能
・データベースの設計
・ローカルでの動作方法
## userテーブル

|Column                |Type       |Options    |
|------ ---------------|-----------|-----------|
|nick_name             |string     |null: false|
|email                 |string     |null: false|
|encrypted_password    |string     |null: false|
has_many :heritages
has_many :favorites
has_many :favorited_items, through: :favorites, source: :heritage
## heritageテーブル
|Column                |Type       |Options                       |
|------ ---------------|-----------|------------------------------|
|name                  |string     |null: false                   |
|country               |references |null: false,foreign_key: true |
|register_id           |integer    |null: false                   |
|explain               |text       |null: false                   |
|user                  |references |null: false,foreign_key: true |

belongs_to :register
belongs_to :country
belongs_to :user
belongs_to :new
has_many :favorites
has_many :favorited_users, through: : favorites, source: :user 

## newテーブル

|Column                |Type       |Options    |
|------ ---------------|-----------|-----------|
|heritage              |references |null: false|

has_many :heritages

## countryテーブル
|Column                |Type       |Options                       |
|------ ---------------|-----------|------------------------------|
|country_id            |integer    |null: false                   |
has_many :heritages

## favoriteテーブル

|Column                |Type       |Options    |
|----------------------|-----------|-----------|
|heritage_id           |integer    |null: false|
|user_id               |integer    |null: false|

belongs_to:heritage
belongs_to:user

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
