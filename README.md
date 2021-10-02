# README

## userテーブル

|Column                |Type       |Options    |
|------ ---------------|-----------|-----------|
|nick_name             |string     |null: false|
|email                 |string     |null: false|
|encrypted_password    |string     |null: false|
has_many :heritages
has_many :favorite
## heritageテーブル
|Column                |Type       |Options                       |
|------ ---------------|-----------|------------------------------|
|name                  |string     |null: false                   |
|register_id           |integer    |null: false                   |
|country_id            |integer    |null: false                   |
|explain               |text       |null: false                   |
|user                  |references |null: false,foreign_key: true |


belongs_to :user

## favariteテーブル

|Column                |Type       |Options    |
|------ ---------------|-----------|-----------|
|heritage             |references |null: false|
|user                  |references |null: false|

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
