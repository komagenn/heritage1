# README

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
