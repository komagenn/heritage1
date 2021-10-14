# README
・アプリケーション名
  heritage1
・アプリケーション概要
  南米の世界遺産を一覧できるアプリケーションです。
・URL
・テスト用アカウント
 Basic認証
 ユーザー名：admin
 パスワード：2233
 管理者：
   メールアドレス：tt@test   パスワード：tamago55
 ユーザー：
   メールアドレス：test@test パスワード :tamago55
・利用方法
  南米の世界遺産について画像と共に一覧したい時に国ごとで閲覧が可能です。
・目指した課題解決
  世界遺産は現在1150個以上あります。
  しかし、知っている数は100個もいかないと思います。
  そのため、知らない世界遺産についても国を選ぶだけで知ることができます。
  また南米の世界遺産に関しては、写真付きで説明も載っているサイトというのは、私が探した中ではありませんでした。
  そこで、南米の世界遺産について一覧を作ることで、より気軽に世界遺産について知ることができるきっかけが作れると考えました。
・洗い出した要件
  ユーザー管理機能
  投稿機能
  一覧機能
  詳細機能
  編集・更新機能
  削除機能
  マイページ機能
  お気に入り機能
  管理者機能
  画面遷移機能
  検索機能
・実装した機能についての画像やGIFおよびその説明
ユーザー管理機能
https://gyazo.com/ddf71cf9e1293463c7be3b15d6d44860
投稿機能
https://gyazo.com/74dc3c5221f5725e110b845b16e10f04
一覧機能
https://gyazo.com/30afd2e64c1113a573251a0fd85f3e5d
詳細機能
https://gyazo.com/b461e0644943dc6b767a3e4ff7734edb
編集・更新機能
https://gyazo.com/2550f58cc9d1220410bbe2c3374227a1
削除機能
https://gyazo.com/4131407060ca3361c63c02cac8fd7e3a
マイページ機能
https://gyazo.com/10a594d6e548bb2e355030e8037068bf
お気に入り機能
https://gyazo.com/19ff57fef082c972e6e1641393d93e8c
管理者機能
https://gyazo.com/3a3cd634d5f204b9c5745c8a344724fe
画面遷移機能
https://gyazo.com/224633918573ab871114899e9473dc3b
検索機能
https://gyazo.com/49fecf1e3680f22ff64c9f72a08ff702
Basic認証
https://gyazo.com/abee190f401fc69649dd76cc8b9e7baf

・データベースの設計
[![Image from Gyazo](https://i.gyazo.com/38689c026fdad3150e91e0354ac5470e.png)](https://gyazo.com/38689c026fdad3150e91e0354ac5470e)
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
|nation                |references |null: false,foreign_key: true |
|register_id           |integer    |null: false                   |
|explain               |text       |null: false                   |
|user                  |references |null: false,foreign_key: true |

belongs_to :register
belongs_to :country
belongs_to :user
belongs_to :new
has_many :favorites
has_many :favorited_users, through: : favorites, source: :user 


## countryテーブル
|Column                |Type       |Options                       |
|------ ---------------|-----------|------------------------------|
|country_id            |integer    |null: false                   |
has_many :heritages

## favoriteテーブル

|Column                |Type       |Options    |
|----------------------|-----------|-----------|
|heritage_id           |references |null: false|
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
